#ifndef __PROGTEST__
#include <cstring>
#include <cstdlib>
#include <cstdio>
#include <cctype>
#include <cmath>
#include <cassert>
#include <iostream>
#include <iomanip>
#include <string>
#include <vector>
#include <list>
#include <algorithm>
#include <functional>
#include <memory>
#endif /* __PROGTEST__ */

class LAND
{
public:
  std::string mOwner;
  std::string mAddr;
  std::string mRegion;
  std::string mCity;
  // std::string mRegId;
  // std::string mCityAddr;
  unsigned int mId;
  inline static unsigned int staticAge;
  unsigned int mAge;

  LAND() : mId(0) {}

  LAND(const std::string& city, const std::string& addr, const std::string &region, unsigned int id)
  :
    mAddr(addr),
    mRegion(region),
    mCity(city),
    mId(id)
    // mRegId = region+ std::to_string(id);
    // mCityAddr = city+addr;
   { mAge = staticAge;
    staticAge++;
  }

  bool operator==(const LAND &other) const
  {
    return (mCity == other.mCity && mAddr == other.mAddr) || (mRegion == other.mRegion && mId == other.mId);
  }

  static bool compareByAddr(const LAND &a, const LAND &b)
  {
    int comp = a.mCity.compare(b.mCity);
    if (!comp)
      return a.mAddr < b.mAddr;
    return comp<0;
  }
  static bool compareByOwner(const LAND &a, const LAND &b)
  {
    //  return a.mOwner < b.mOwner;
    // std::string aOwnerLower = a.mOwner;
    // std::string bOwnerLower = b.mOwner;

    // std::transform(aOwnerLower.begin(), aOwnerLower.end(), aOwnerLower.begin(), ::tolower);
    // std::transform(bOwnerLower.begin(), bOwnerLower.end(), bOwnerLower.begin(), ::tolower);
    int comparison = strcasecmp(a.mOwner.c_str(), b.mOwner.c_str());
    if (comparison)
      return comparison<0;

    return compareByAddr(a,b);
  }
  // static bool compareByOwnerUp(const LAND &a, const LAND &b)
  // {
  //     int comparison = strcasecmp(a.mOwner.c_str(), b.mOwner.c_str());
  //     return comparison<0;
  // }

  // static bool compareByCityAddr(const LAND & a, const LAND & b){
  //   return a.mCityAddr<b.mCityAddr;
  // }
  static bool compareByRegId(const LAND &a, const LAND &b)
  {
    int comp = a.mRegion.compare(b.mRegion);
    if (!comp)
      return a.mId < b.mId;
   return comp<0;
  }
  static bool compareByAge(const LAND &a, const LAND &b)
  {
    return a.mAge < b.mAge;
  }
  // static bool compareByCityAddrEq(const LAND & a, const LAND & b){
  //   return a.mCityAddr == b.mCityAddr;
  // }
};

class CIterator
{
public:
  CIterator(std::vector<LAND>::const_iterator  current, std::vector<LAND>::const_iterator end)
  {
   // std::copy(current, end, std::back_inserter(landowners));
    mCurrent = current;
    mEnd = end;
    // mCurrent = current; mEnd = end;
    //////std::cout << current->mCityAddr << " " << std::endl;
  }
  bool atEnd() const
  {
    return mCurrent == mEnd;
  };
  void next()
  {
    if (!atEnd())
    {
      ++mCurrent;
    }
  };
  std::string city() const
  {
    return mCurrent->mCity;
  };
  std::string addr() const
  {
    return mCurrent->mAddr;
  };
  std::string region() const
  {
    return mCurrent->mRegion;
  };
  unsigned id() const
  {
    return mCurrent->mId;
  };
  std::string owner() const
  {
    return mCurrent->mOwner;
  };

private:
  std::vector<LAND>::const_iterator mCurrent;
  std::vector<LAND>::const_iterator mEnd;
 // std::vector<LAND> landowners;
  // todo
};

class CLandRegister
{
public:
  bool add(const std::string &city, const std::string &addr, const std::string &region, unsigned int id)
  {
    LAND land(city, addr, region, id);
    if (landexists(land))
    {
      // std::cout<<"this turned false" << std::endl;
      return false;
    }
    auto posAddr = std::lower_bound(landByAddr.begin(), landByAddr.end(), land, LAND::compareByAddr);
    landByAddr.insert(posAddr, land);

    auto posRegion = std::lower_bound(landByRegion.begin(), landByRegion.end(), land, LAND::compareByRegId);
    landByRegion.insert(posRegion, land);
    auto posOwner = std::lower_bound(landByOwner.begin(), landByOwner.end(), land, LAND::compareByOwner);
    landByOwner.insert(posOwner, land);
    //  std::sort(landByOwner.begin(), landByOwner.end(), LAND::compareByOwner);
    return true;
  };

  bool landexists(const LAND & land) const
  {
    if (landByAddr.empty())
      return false;
    auto it = std::lower_bound(landByAddr.begin(), landByAddr.end(), land, LAND::compareByAddr);
    if (it != landByAddr.end() && ((it->mId == land.mId && !strcmp(it->mRegion.c_str() ,land.mRegion.c_str())) || (!strcmp(it->mCity.c_str() ,land.mCity.c_str()) && !strcmp(it->mAddr.c_str() , land.mAddr.c_str()))))
    {
      return true;
    }
    else
    {
      auto it = std::lower_bound(landByRegion.begin(), landByRegion.end(), land, LAND::compareByRegId);
      if (it != landByRegion.end() && ((it->mId == land.mId && !strcmp(it->mRegion.c_str(), land.mRegion.c_str())) || (!strcmp(it->mCity.c_str() ,land.mCity.c_str()) && !strcmp(it->mAddr.c_str() , land.mAddr.c_str()))))
      {
        return true;
      }
    }
    return false;
  }

  bool del(const std::string &city, const std::string &addr, size_t count = 0)
  {
    LAND other;
    // other.mCityAddr = city+addr;
    other.mCity = city;
    other.mAddr = addr;
    // auto it = std::find(landByAddr.begin(), landByAddr.end(), other);
    auto it = std::lower_bound(landByAddr.begin(), landByAddr.end(), other, LAND::compareByAddr);
    if (it != landByAddr.end() && (it->mCity == other.mCity && it->mAddr == other.mAddr))
    {
      if (!count)
      {

        auto posOwner = std::lower_bound(landByOwner.begin(), landByOwner.end(), *it, LAND::compareByOwner);
        // std::cout << " deleting here ======= " << posOwner->mOwner << " owner ==== " << it->mOwner << std::endl;
        landByOwner.erase(posOwner);
        del(it->mRegion, it->mId, 1);
      }
      landByAddr.erase(it);
      return true;
    }
    return false;
  };

  bool del(const std::string &region, unsigned int id, size_t count = 0)
  {
    LAND other;
    other.mId = id;
    other.mRegion = region;

    auto it = std::lower_bound(landByRegion.begin(), landByRegion.end(), other, LAND::compareByRegId);
    if (it != landByRegion.end() && (it->mRegion == other.mRegion && it->mId == other.mId))
    {
      if (!count)
      {
        auto posOwner = std::lower_bound(landByOwner.begin(), landByOwner.end(), *it, LAND::compareByOwner);
        // std::cout << " deleting here ======= " << posOwner->mOwner << std::endl;
        landByOwner.erase(posOwner);
        del(it->mCity, it->mAddr, 1);
      }
      landByRegion.erase(it);

      return true;
    }
    ////std::cout<< "this one when  del fails ========\n";
    return false;
  };

  bool getOwner(const std::string &city, const std::string &addr, std::string &owner) const
  {
    LAND landtofind;

    landtofind.mCity = city;
    landtofind.mAddr = addr;
    auto it = std::lower_bound(landByAddr.begin(), landByAddr.end(), landtofind, LAND::compareByAddr);
    ////std::cout<< it->mCity << " , " << it->mAddr << std::endl;
    if (it != landByAddr.end() && (it->mCity == landtofind.mCity && it->mAddr == landtofind.mAddr))
    {
      owner = it->mOwner;
      return true;
    }

    return false;
  };

  bool getOwner(const std::string &region, unsigned int id, std::string &owner) const
  {
    LAND landtofind;
    landtofind.mRegion = region;
    landtofind.mId = id;
    auto it = std::lower_bound(landByRegion.begin(), landByRegion.end(), landtofind, LAND::compareByRegId);
    ////std::cout << it-> mCityAddr <<  " , " << it -> mRegId <<  std::endl;
    if (it != landByRegion.end() && (it->mRegion == landtofind.mRegion && it->mId == landtofind.mId))
    {
      owner = it->mOwner;
      return true;
    }
    return false;
  };

  bool newOwner(const std::string &city, const std::string &addr, const std::string &owner, size_t count = 0)
  {
    LAND landtofind;
    landtofind.mCity = city;
    landtofind.mAddr = addr;

    auto it = std::lower_bound(landByAddr.begin(), landByAddr.end(), landtofind, LAND::compareByAddr);
    ////std::cout << it-> mCityAddr << std::endl;
    if (it != landByAddr.end() && (it->mCity == landtofind.mCity && it->mAddr == landtofind.mAddr) && (strcasecmp(it->mOwner.c_str(), owner.c_str())))
    {
      if (!count)
      {

        auto posOwner = std::lower_bound(landByOwner.begin(), landByOwner.end(), *it, LAND::compareByOwner);
        landByOwner.erase(posOwner);
        it->mOwner = owner;
        it->mAge = LAND::staticAge;
        LAND::staticAge++;

        posOwner = std::lower_bound(landByOwner.begin(), landByOwner.end(), *it, LAND::compareByOwner);
        landByOwner.emplace(posOwner, *it);
        // landByOwner.push_back(*it);
        return newOwner(it->mRegion, it->mId, it->mOwner, 1);
      };
      it->mOwner = owner;
      it->mAge = LAND::staticAge;
      LAND::staticAge++;

      return true;
    }

    return false;
  };

  bool newOwner(const std::string &region, unsigned int id, const std::string &owner, size_t count = 0)
  {
    // std::string to_match = region + std::to_string(id);
    LAND landtofind;
    //  landtofind.mRegId = to_match;
    landtofind.mRegion = region;
    landtofind.mId = id;
    auto it = std::lower_bound(landByRegion.begin(), landByRegion.end(), landtofind, LAND::compareByRegId);
    ////std::cout << it-> mCityAddr <<  " , " << it -> mRegId <<  std::endl;
    if (it != landByRegion.end() && (it->mRegion == landtofind.mRegion && it->mId == landtofind.mId) && (strcasecmp(it->mOwner.c_str(), owner.c_str())))
    {

      // it->timestamp = std::chrono::system_clock::now();

      if (!count)
      { // landByOwner.push_back(*it); ;
        auto posOwner = std::lower_bound(landByOwner.begin(), landByOwner.end(), *it, LAND::compareByOwner);
        landByOwner.erase(posOwner);
        it->mOwner = owner;
        it->mAge = LAND::staticAge;
        LAND::staticAge++;
        posOwner = std::lower_bound(landByOwner.begin(), landByOwner.end(), *it, LAND::compareByOwner);
        landByOwner.emplace(posOwner, *it);
        return newOwner(it->mCity, it->mAddr, it->mOwner, 1);
      };
      it->mOwner = owner;
      it->mAge = LAND::staticAge;
      LAND::staticAge++;
      return true;
    }
    return false;
  };

  size_t count(const std::string &owner) const
  {

    LAND other;
    other.mOwner = owner;

    auto range = std::equal_range(landByOwner.begin(), landByOwner.end(), other, [](const LAND &a, const LAND &b)
                                  { return strcasecmp(a.mOwner.c_str(), b.mOwner.c_str()) < 0; });

    return std::distance(range.first, range.second);
    //  return count;
  };

  // void print(){
  //   ////std::cout << "sizes are ->  " <<landByRegion.size() << "   &   " << landByAddr.size()<<std::endl;
  //   for(auto it : landByAddr){
  //     //std::cout<< "city is " << it.mCity <<" , addr is " << it.mAddr << it.mOwner <<std::endl;
  //   }
  //   //std::cout<< "------->\n" << std::endl;
  //       for(auto it : landByRegion){
  //     //std::cout<< "city is " << it.mOwner <<" , addr is " << it.mRegId << std::endl;
  //   }
  // }

  CIterator listByAddr() const
  {
    return CIterator(landByAddr.begin(), landByAddr.end());
  };

  CIterator listByOwner(const std::string &owner) const
  {
    LAND ownersearch;
    //
    // ownersearch.mOwner=owner;
    //  std::transform(ownersearch.mOwner.begin(), ownersearch.mOwner.end(), ownersearch.mOwner.begin(), ::tolower);

    matchingRecords.clear();
    for (const LAND &land : landByAddr)
    {
      // std::cout << "<< HERE >>----------" << std::endl;
      // std::string lowstr = land.mOwner;
      // std::transform(lowstr.begin(), lowstr.end(), lowstr.begin(), ::tolower);
      if (!strcasecmp(owner.c_str(), land.mOwner.c_str()))
      {
        matchingRecords.push_back(land);
        // //std::cout << land.age << std::endl;
        // std::cout << land.mCityAddr << "  " << land.mRegId << std::endl;
      }
    }
    // std::cout << "<< after sort >>----------" << std::endl;
    std::sort(matchingRecords.begin(), matchingRecords.end(), LAND::compareByAge);
    // for (auto it : matchingRecords){
    //   std::cout<< "city is " << it.mCity <<" , addr is " << it.mAddr << it.mOwner <<std::endl;
    // }
    // //std::cout<< "hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee" << std::endl;
    return CIterator(matchingRecords.begin(), matchingRecords.end());
  }

private:
  // todo
  std::vector<LAND> landByAddr;
  std::vector<LAND> landByOwner;
  std::vector<LAND> landByRegion;
  // std::vector<LAND>lands;
  inline static std::vector<LAND> matchingRecords;
  // static std::vector<std::string>owners;
};
// std::vector<std::string> CLandRegister::owners;
#ifndef __PROGTEST__
static void test0()
{
  CLandRegister x;
  std::string owner;
  // assert(x.add( "aa", "aa", "Zcjdglwmhkadda", 843956 ));
  assert(x.add("Prague", "Thakurova", "Dejvice", 12345));
  assert(x.add("Prague", "Evropska", "Vokovice", 12345));
  assert(x.add("Prague", "Technicka", "Dejvice", 9873));
  assert(x.add("Plzen", "Evropska", "Plzen mesto", 78901));
  assert(x.add("Liberec", "Evropska", "Librec", 4552));
  // assert(x.add("    ", "aa", "Prague", 4552));
  //  assert(x.add("aa", "    ", "Librece", 4552));
  // x.print();
  assert(x.count("") == 5);
  CIterator i0 = x.listByAddr();
  assert(!i0.atEnd() && i0.city() == "Liberec" && i0.addr() == "Evropska" && i0.region() == "Librec" && i0.id() == 4552 && i0.owner() == "");
  i0.next();
  assert(!i0.atEnd() && i0.city() == "Plzen" && i0.addr() == "Evropska" && i0.region() == "Plzen mesto" && i0.id() == 78901 && i0.owner() == "");
  i0.next();
  assert(!i0.atEnd() && i0.city() == "Prague" && i0.addr() == "Evropska" && i0.region() == "Vokovice" && i0.id() == 12345 && i0.owner() == "");
  i0.next();
  assert(!i0.atEnd() && i0.city() == "Prague" && i0.addr() == "Technicka" && i0.region() == "Dejvice" && i0.id() == 9873 && i0.owner() == "");
  i0.next();
  assert(!i0.atEnd() && i0.city() == "Prague" && i0.addr() == "Thakurova" && i0.region() == "Dejvice" && i0.id() == 12345 && i0.owner() == "");
  i0.next();
  // assert(!i0.atEnd() && i0.city() == "aa" && i0.addr() == "aa" && i0.region() == "Zcjdglwmhkadda" && i0.id() == 843956 && i0.owner() == "");
  // i0.next();
  assert(i0.atEnd());

  assert(x.count("") == 5);
  CIterator i1 = x.listByOwner("");
  // assert(!i1.atEnd() && i1.city() == "aa" && i1.addr() == "aa" && i1.region() == "Zcjdglwmhkadda" && i1.id() == 843956 && i0.owner() == "");
  // i1.next();

  assert(!i1.atEnd() && i1.city() == "Prague" && i1.addr() == "Thakurova" && i1.region() == "Dejvice" && i1.id() == 12345 && i1.owner() == "");
  i1.next();
  assert(!i1.atEnd() && i1.city() == "Prague" && i1.addr() == "Evropska" && i1.region() == "Vokovice" && i1.id() == 12345 && i1.owner() == "");
  i1.next();
  assert(!i1.atEnd() && i1.city() == "Prague" && i1.addr() == "Technicka" && i1.region() == "Dejvice" && i1.id() == 9873 && i1.owner() == "");
  i1.next();
  assert(!i1.atEnd() && i1.city() == "Plzen" && i1.addr() == "Evropska" && i1.region() == "Plzen mesto" && i1.id() == 78901 && i1.owner() == "");
  i1.next();
  assert(!i1.atEnd() && i1.city() == "Liberec" && i1.addr() == "Evropska" && i1.region() == "Librec" && i1.id() == 4552 && i1.owner() == "");
  i1.next();
  assert(i1.atEnd());

  assert(x.count("CVUT") == 0);
  CIterator i2 = x.listByOwner("CVUT");
  assert(i2.atEnd());

  assert(x.newOwner("Prague", "Thakurova", "CVUT"));
  assert(x.newOwner("Dejvice", 9873, "CVUT"));
  assert(x.newOwner("Plzen", "Evropska", "Anton Hrabis"));
  assert(x.newOwner("Librec", 4552, "Cvut"));
  // assert(x.newOwner("Librec", 4552, "Cvut"));
  // assert(x.newOwner("Libreceee", 4552, "Cvut"));
  assert(x.getOwner("Prague", "Thakurova", owner) && owner == "CVUT");
  assert(x.getOwner("Dejvice", 12345, owner) && owner == "CVUT");
  assert(x.getOwner("Prague", "Evropska", owner) && owner == "");
  assert(x.getOwner("Vokovice", 12345, owner) && owner == "");
  assert(x.getOwner("Prague", "Technicka", owner) && owner == "CVUT");
  assert(x.getOwner("Dejvice", 9873, owner) && owner == "CVUT");
  assert(x.getOwner("Plzen", "Evropska", owner) && owner == "Anton Hrabis");
  assert(x.getOwner("Plzen mesto", 78901, owner) && owner == "Anton Hrabis");
  assert(x.getOwner("Liberec", "Evropska", owner) && owner == "Cvut");
  assert(x.getOwner("Librec", 4552, owner) && owner == "Cvut");
  CIterator i3 = x.listByAddr();
  assert(!i3.atEnd() && i3.city() == "Liberec" && i3.addr() == "Evropska" && i3.region() == "Librec" && i3.id() == 4552 && i3.owner() == "Cvut");
  i3.next();
  assert(!i3.atEnd() && i3.city() == "Plzen" && i3.addr() == "Evropska" && i3.region() == "Plzen mesto" && i3.id() == 78901 && i3.owner() == "Anton Hrabis");
  i3.next();
  assert(!i3.atEnd() && i3.city() == "Prague" && i3.addr() == "Evropska" && i3.region() == "Vokovice" && i3.id() == 12345 && i3.owner() == "");
  i3.next();
  assert(!i3.atEnd() && i3.city() == "Prague" && i3.addr() == "Technicka" && i3.region() == "Dejvice" && i3.id() == 9873 && i3.owner() == "CVUT");
  i3.next();
  assert(!i3.atEnd() && i3.city() == "Prague" && i3.addr() == "Thakurova" && i3.region() == "Dejvice" && i3.id() == 12345 && i3.owner() == "CVUT");
  i3.next();
  assert(i3.atEnd());

  assert(x.count("cvut") == 3);
  assert(x.count("Anton Hrabis") == 1);
  // std::cout<< "==========================i4 starts" << std::endl;
  // x.print();
  CIterator i4 = x.listByOwner("cVuT");
  //CIterator i10 = x.listByOwner("anton hrabis");

  ////std::cout << i4.city() << " " << i4.addr() << " " <<i4.region() << "  " << i4.id() << " " << i4.owner() << std::endl;
  assert(!i4.atEnd() && i4.city() == "Prague" && i4.addr() == "Thakurova" && i4.region() == "Dejvice" && i4.id() == 12345 && i4.owner() == "CVUT");
  i4.next();
  // std::cout<< "hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee" << std::endl;
  assert(!i4.atEnd() && i4.city() == "Prague" && i4.addr() == "Technicka" && i4.region() == "Dejvice" && i4.id() == 9873 && i4.owner() == "CVUT");
  i4.next();
  assert(!i4.atEnd() && i4.city() == "Liberec" && i4.addr() == "Evropska" && i4.region() == "Librec" && i4.id() == 4552 && i4.owner() == "Cvut");
  i4.next();
  assert(i4.atEnd());
  // std::cout<< "hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee" << std::endl;

  assert(x.newOwner("Plzen mesto", 78901, "CVut"));
  // std::cout<< x.count("Cvutip") << std::endl;
  assert(x.count("Cvut") == 4);
  CIterator i5 = x.listByOwner("CVUT");
  assert(!i5.atEnd() && i5.city() == "Prague" && i5.addr() == "Thakurova" && i5.region() == "Dejvice" && i5.id() == 12345 && i5.owner() == "CVUT");
  i5.next();
  assert(!i5.atEnd() && i5.city() == "Prague" && i5.addr() == "Technicka" && i5.region() == "Dejvice" && i5.id() == 9873 && i5.owner() == "CVUT");
  i5.next();
  assert(!i5.atEnd() && i5.city() == "Liberec" && i5.addr() == "Evropska" && i5.region() == "Librec" && i5.id() == 4552 && i5.owner() == "Cvut");
  i5.next();
  assert(!i5.atEnd() && i5.city() == "Plzen" && i5.addr() == "Evropska" && i5.region() == "Plzen mesto" && i5.id() == 78901 && i5.owner() == "CVut");
  i5.next();
  assert(i5.atEnd());

  assert(x.del("Liberec", "Evropska"));
  assert(x.del("Plzen mesto", 78901));
  assert(x.count("cvut") == 2);
  CIterator i6 = x.listByOwner("cVuT");
  assert(!i6.atEnd() && i6.city() == "Prague" && i6.addr() == "Thakurova" && i6.region() == "Dejvice" && i6.id() == 12345 && i6.owner() == "CVUT");
  i6.next();
  assert(!i6.atEnd() && i6.city() == "Prague" && i6.addr() == "Technicka" && i6.region() == "Dejvice" && i6.id() == 9873 && i6.owner() == "CVUT");
  i6.next();
  assert(i6.atEnd());
  // x.print();
  assert(x.add("Liberec", "Evropska", "Librec", 4552));
}

static void test1()
{
  CLandRegister x;
  std::string owner;

  assert(x.add("Prague", "Thakurova", "Dejvice", 12345));
  assert(x.add("Prague", "Evropska", "Vokovice", 12345));
  assert(x.add("Prague", "Technicka", "Dejvice", 9873));
  assert(!x.add("Prague", "Technicka", "Hradcany", 7344));
  assert(!x.add("Brno", "Bozetechova", "Dejvice", 9873));
  assert(!x.getOwner("Prague", "THAKUROVA", owner));
  assert(!x.getOwner("Hradcany", 7343, owner));
  CIterator i0 = x.listByAddr();
  assert(!i0.atEnd() && i0.city() == "Prague" && i0.addr() == "Evropska" && i0.region() == "Vokovice" && i0.id() == 12345 && i0.owner() == "");
  i0.next();
  assert(!i0.atEnd() && i0.city() == "Prague" && i0.addr() == "Technicka" && i0.region() == "Dejvice" && i0.id() == 9873 && i0.owner() == "");
  i0.next();
  assert(!i0.atEnd() && i0.city() == "Prague" && i0.addr() == "Thakurova" && i0.region() == "Dejvice" && i0.id() == 12345 && i0.owner() == "");
  i0.next();
  assert(i0.atEnd());

  assert(x.newOwner("Prague", "Thakurova", "CVUT"));
  // x.print();
  assert(!x.newOwner("Prague", "technicka", "CVUT"));
  assert(!x.newOwner("prague", "Technicka", "CVUT"));
  assert(!x.newOwner("dejvice", 9873, "CVUT"));
  assert(!x.newOwner("Dejvice", 9973, "CVUT"));
  assert(!x.newOwner("Dejvice", 12345, "CVUT"));
  assert(x.count("CVUT") == 1);
  CIterator i1 = x.listByOwner("CVUT");
  assert(!i1.atEnd() && i1.city() == "Prague" && i1.addr() == "Thakurova" && i1.region() == "Dejvice" && i1.id() == 12345 && i1.owner() == "CVUT");
  i1.next();
  assert(i1.atEnd());

  assert(!x.del("Brno", "Technicka"));
  assert(!x.del("Karlin", 9873));
  assert(x.del("Prague", "Technicka"));
  assert(!x.del("Prague", "Technicka"));
  assert(!x.del("Dejvice", 9873));
}

int main(void)
{
  test0();
  test1();
  return EXIT_SUCCESS;
}
#endif /* __PROGTEST__ */