#ifndef __PROGTEST__
#include <cstring>
#include <cstdlib>
#include <cstdio>
#include <cctype>
#include <climits>
#include <cstdint>
#include <cassert>
#include <iostream>
#include <iomanip>
#include <fstream>
#include <sstream>
#include <vector>
#include <algorithm>
#include <optional>
#include <memory>
#include <stdexcept>
#include <set>
#include <map>
#include <queue>
#include <deque>
#include <stack>
#include <unordered_map>
#include <unordered_set>
#endif /* __PROGTEST__ */

// ------------------------------------------------------------------------------------------------
class CLinker
{
public:
  CLinker & addFile(const std::string &fn)
  {
    std::ifstream f(fn, std::ios::binary);
    if (!f) throw std::runtime_error("Cannot read input file");

    ObjectFile ofd;
    readU32(f, ofd.exportCount);
    readU32(f, ofd.importCount);
    readU32(f, ofd.codeSize);

    // --- exports ---
    ofd.exports.reserve(ofd.exportCount);
    for (uint32_t i = 0; i < ofd.exportCount; ++i)
    {
      uint8_t len; readU8(f, len);
      std::string sym(len, '\0');
      f.read(&sym[0], len);
      uint32_t off; readU32(f, off);
      ofd.exports.push_back({ sym, off });
      // register globally
      auto [it, ok] = globalExports.insert(
        { sym, SymD { files.size(), off } }
    );
    if ( ! ok )
        throw std::runtime_error( "Duplicate symbol: " + sym );
    
    }

    // --- imports ---
    ofd.imports.reserve(ofd.importCount);
    for (uint32_t i = 0; i < ofd.importCount; ++i)
    {
      uint8_t len; readU8(f, len);
      std::string sym(len, '\0');
      f.read(&sym[0], len);
      uint32_t cnt; readU32(f, cnt);
      std::vector<uint32_t> uses(cnt);
      for (uint32_t j = 0; j < cnt; ++j)
        readU32(f, uses[j]);
      ofd.imports.push_back({ sym, std::move(uses) });
    }

    // --- code block ---
    ofd.code.resize(ofd.codeSize);
    f.read(reinterpret_cast<char*>(ofd.code.data()), ofd.codeSize);
    if (!f) throw std::runtime_error("Unexpected EOF while reading code");

    files.push_back(std::move(ofd));
    return *this;
  }

  void linkOutput(const std::string &outFn, const std::string &entry)
  {
    // 1) find entry
    auto git = globalExports.find(entry);
    if (git == globalExports.end())
      throw std::runtime_error("Undefined symbol " + entry);

    struct FuncID { size_t fileIdx; uint32_t start; };
    auto [eFile, eOff] = git->second;

    // 2) BFS/queue walk
    std::set<std::pair<size_t,uint32_t>> visited;
    std::queue<FuncID>                    q;
    std::vector<FuncID>                   bfsOrder;

    auto enqueue = [&](FuncID f) {
      auto key = std::make_pair(f.fileIdx, f.start);
      if (!visited.insert(key).second) return;
      q.push(f);
      bfsOrder.push_back(f);
    };

    enqueue({eFile, eOff});

    while (!q.empty())
    {
      auto [fi, fo] = q.front(); q.pop();
      auto &O = files[fi];

      // compute funcEnd by finding the smallest export offset > fo
      uint32_t funcEnd = O.codeSize;
      for (auto &ex : O.exports)
        if (ex.offset > fo && ex.offset < funcEnd)
          funcEnd = ex.offset;

      // gather all (usagePos, symbol) that lie in [fo,funcEnd)
      std::vector<std::pair<uint32_t,std::string>> calls;
      for (auto &imp : O.imports)
      {
        for (auto u : imp.uses)
          if (u >= fo && u < funcEnd)
            calls.emplace_back(u, imp.sym);
      }
      // sort by code‐order
      std::sort(calls.begin(), calls.end(),
                [&](auto &a, auto &b){ return a.first < b.first; });

      // enqueue each in turn
      for (auto &c : calls)
      {
        auto git2 = globalExports.find(c.second);
        if (git2 == globalExports.end())
          throw std::runtime_error("Undefined symbol " + c.second);
        enqueue({ git2->second.fileIdx, git2->second.start });
      }
    }

    std::vector<bool> fileUsed( files.size(), false );
for ( auto &f : bfsOrder )
  fileUsed[f.fileIdx] = true;

// clear out anything in the no‑use files
for ( size_t i = 0; i < files.size(); ++i )
{
  if ( ! fileUsed[i] )
  {
    files[i].exports.clear();
    files[i].imports.clear();
    files[i].code.clear();
    files[i].code.shrink_to_fit();
  }
}
    // 3) lay out in exactly bfsOrder
    std::vector<uint8_t> out;
    out.reserve(4096);
    std::map<std::pair<size_t,uint32_t>, uint32_t> finalAddr;

    // helper to compute length
    auto funcLen = [&](size_t fi, uint32_t st){
      uint32_t e = files[fi].codeSize;
      for (auto &ex : files[fi].exports)
        if (ex.offset > st && ex.offset < e)
          e = ex.offset;
      return e - st;
    };

    uint32_t curOff = 0;
    for (auto &f : bfsOrder)
    {
      finalAddr[{f.fileIdx, f.start}] = curOff;
      uint32_t L = funcLen(f.fileIdx, f.start);
      auto &C = files[f.fileIdx].code;
      out.insert(out.end(), C.begin()+f.start, C.begin()+f.start+L);
      curOff += L;
    }

    // 4) patch the 4‑byte addresses
    for (auto &f : bfsOrder)
    {
      auto &O = files[f.fileIdx];
      uint32_t st = f.start,
               L  = funcLen(f.fileIdx, f.start),
               e  = st + L,
               base = finalAddr[{f.fileIdx, f.start}];
               for (auto &imp : O.imports)
               {
                 for (auto u : imp.uses)
                 {
                   if (u < st || u >= e) 
                     continue;
                   auto git2 = globalExports.find(imp.sym);
                   uint32_t addr = finalAddr[{ git2->second.fileIdx, git2->second.start }];
                   uint32_t usagePos = base + (u - st);
               
                   std::memcpy( out.data() + usagePos, 
                                &addr, 
                                sizeof(addr) );
                 }
               }
    }

    // 5) dump out
    std::ofstream fout( outFn, std::ios::binary );
    if ( ! fout )
      throw std::runtime_error( "Cannot write output file" );
    
    fout.write( reinterpret_cast<const char*>(out.data()), out.size() );
    // catch any error during write:
    if ( ! fout )
      throw std::runtime_error( "Cannot write output file" );
    
    fout.close();
    // catch any error on flush/close:
    if ( fout.fail() )
      throw std::runtime_error( "Cannot write output file" );
  }

private:
  struct ObjectFile
  {
    uint32_t exportCount, importCount, codeSize;
    struct E { std::string sym; uint32_t offset; };
    struct I { std::string sym; std::vector<uint32_t> uses; };
    std::vector<E> exports;
    std::vector<I> imports;
    std::vector<uint8_t> code;
  };
  std::vector<ObjectFile> files;
  struct SymD { size_t fileIdx; uint32_t start; };
  std::unordered_map<std::string, SymD> globalExports;

  static void readU8 (std::istream &in, uint8_t &v)
  {
    char c; in.read(&c,1); v = uint8_t(c);
  }
  static void readU32(std::istream &in, uint32_t &v)
  {
    uint8_t b[4];
    in.read(reinterpret_cast<char*>(b),4);
    v  = uint32_t(b[0])
       | uint32_t(b[1]) <<  8
       | uint32_t(b[2]) << 16
       | uint32_t(b[3]) << 24;
  }
};

#ifndef __PROGTEST__
int main()
{
  CLinker().addFile("0in0.o").linkOutput("0out", "strlen");
  CLinker().addFile("1in0.o").linkOutput("1out", "main");
  CLinker().addFile("2in0.o").addFile("2in1.o").linkOutput("2out", "main");
  CLinker().addFile("3in0.o").addFile("3in1.o").linkOutput("3out", "towersOfHanoi");


  // original error‑tests 4–7
  try { CLinker().addFile("4in0.o").addFile("4in1.o")
                .linkOutput("4out","unusedFunc");
        assert(false);
  } catch(...) {}
  try { CLinker().addFile("5in0.o").linkOutput("5out","main");
        assert(false);
  } catch(...) {}
  try { CLinker().addFile("6in0.o").linkOutput("6out","strlen");
        assert(false);
  } catch(...) {}
  try { CLinker().addFile("7in0.o").linkOutput("7out","strlen2");
        assert(false);
  } catch(...) {}

  return EXIT_SUCCESS;
}
#endif /* __PROGTEST__ */