#ifndef __PROGTEST__
#include <cstring>
#include <cstdlib>
#include <cstdio>
#include <cassert>
#include <cmath>
#include <iostream>
#include <iomanip>
#include <memory>
#include <stdexcept>
#endif /* __PROGTEST__ */

class CString
{
public:
  explicit CString(const char *str = "");
  ~CString() { delete[] mData; }

  char *data() const { return mData; };
  size_t getSize() const { return mSize; };

  const char *substr(size_t pos, size_t len) const
  {
    // finding min len to avoid buffer overflow
    len = std::min(len, mSize - pos);
    char *subStr = new char[len + 1];
    std::memcpy(subStr, mData + pos, len);
    subStr[len] = '\0';
    return subStr;

  }

  // friend std::ostream &operator<<(std::ostream &os, const CString &obj)
  // {
  //   return os << obj.mData;
  // }

private:
  void set(const char *str, size_t len)
  {
    mSize = len;
    mCapacity = len;
    mData = new char[mSize + 1];
    memcpy(mData, str, mSize);
    mData[mSize] = '\0';
  }

  char *mData = nullptr;
  size_t mSize = 0;
  size_t mCapacity = 0;
  size_t refCount = 1;
};

CString::CString(const char *str)
{
  set(str, strlen(str));
}

struct Patch
{

  std::shared_ptr<CString> data;
  size_t mLength;
  size_t mOffset;
  Patch() : data(nullptr), mLength(0), mOffset(0) {}
  Patch(std::shared_ptr<CString> data, size_t length, size_t offset)
      : data(std::move(data)), mLength(length), mOffset(offset) {}

  const char *getData() const
  {
    return data->substr(mOffset, mLength);
  }
};

class CPatchStr
{
public:
  ~CPatchStr()
  {
    delete[] mPatches;
  }
  CPatchStr &operator=(const CPatchStr &src)
  {
    if (this == &src)
      return *this;
    delete[] mPatches;
    mPatches = new Patch[src.mCapacity];
    for (size_t i = 0; i < src.mSize; i++)
    {
      mPatches[i] = src.mPatches[i];
    }
    mSize = src.mSize;
    mCapacity = src.mCapacity;
    return *this;
  }
  CPatchStr() : mSize(0), mCapacity(1)
  {
    mPatches = new Patch[mCapacity];
  }
  CPatchStr(const char *str)
  {
    std::shared_ptr<CString> cstr = std::make_shared<CString>(str);
    mPatches = new Patch[mCapacity];
    Patch patch(cstr, cstr->getSize(), 0);
    appendPatch(patch);
  }
  CPatchStr &append(const CPatchStr &src);
  CPatchStr subStr(size_t offset, size_t len) const;
  CPatchStr &insert(size_t pos, const CPatchStr &src);
  CPatchStr &remove(size_t pos, size_t len);
  size_t size() const
  {
    size_t totalLength = 0;
    for (size_t i = 0; i < mSize; i++)
    {
      if (mPatches[i].mLength == 0)
        continue;
      totalLength += mPatches[i].mLength;
    }
    return totalLength;
  }

  CPatchStr(const CPatchStr &src)
  {
    mPatches = new Patch[src.mCapacity];
    for (size_t i = 0; i < src.mSize; i++)
    {
      mPatches[i] = src.mPatches[i];
    }
    mSize = src.mSize;
    mCapacity = src.mCapacity;
  }
  void appendPatch(const Patch &patch);

  char *toStr() const;

private:
  Patch *mPatches;
  size_t mSize = 0;
  size_t mCapacity = 1;
};
void CPatchStr::appendPatch(const Patch &patch)
{
  if (mSize == mCapacity)
  {
    size_t newCapacity = mCapacity == 0 ? 1 : mCapacity * 2;
    Patch *newPatches = new Patch[newCapacity];
    for (size_t i = 0; i < mSize; i++)
    {
      newPatches[i] = mPatches[i];
    }
    delete[] mPatches;
    mPatches = newPatches;
    mCapacity = newCapacity;
  }
  mPatches[mSize++] = patch;
}

CPatchStr &CPatchStr::append(const CPatchStr &src)
{
  if (this == &src)
  {
    size_t newCapacity = mCapacity == 0 ? 1 : mCapacity * 2;
    Patch *newPatches = new Patch[newCapacity];
    for (size_t i = 0; i < mSize; i++)
    {
      newPatches[i] = mPatches[i];
    }
    delete[] mPatches;
    mPatches = newPatches;
    mCapacity = newCapacity;
    for (size_t i = mSize; i < newCapacity; i++)
    {
      newPatches[i] = mPatches[i - mSize];
    }
    mSize = mSize * 2;
  }
  else
  {
    for (size_t i = 0; i < src.mSize; i++)
    {
      if (mSize + src.mSize > mCapacity)
      {
        mCapacity *= 2;
        Patch *newPatches = new Patch[mCapacity];
        for (size_t j = 0; j < mSize; j++)
        {
          newPatches[j] = mPatches[j];
        }
        delete[] mPatches;
        mPatches = newPatches;
      }
      mPatches[mSize++] = src.mPatches[i];
    }
  }
  return *this;
};

CPatchStr CPatchStr::subStr(size_t offset, size_t len)const
{
  if (offset + len > this->size())
    throw std::out_of_range("Out of range");
  CPatchStr result;
  size_t currentOffset = 0;

  for (size_t i = 0; i < mSize; ++i)
  {
    size_t patchSIze = mPatches[i].mLength;
    if (currentOffset + patchSIze > offset && currentOffset < offset + len)
    {
      size_t patchOffset = std::max(offset, currentOffset) - currentOffset;
      size_t patchLen = std::min(currentOffset + patchSIze, offset + len) - (currentOffset + patchOffset);
      Patch patch(mPatches[i].data, patchLen, mPatches[i].mOffset + patchOffset);
      result.appendPatch(patch);
    }
    currentOffset += patchSIze;
  }
  return result;
}

CPatchStr &CPatchStr::insert(size_t pos, const CPatchStr &src)
{
  if (src.mSize == 0)
    return *this; // Nothing to insert
  if (pos > this->size())
    throw std::out_of_range("Position is out of range");
 // size_t currentLength = this->size();

 CPatchStr leftMost = this->subStr(0,pos);
 CPatchStr rightMost = this->subStr(pos, this->size()-(pos));
 leftMost.append(src);
 leftMost.append(rightMost);
 *this = std::move(leftMost);
 //std::cout<< this->toStr() << std::endl;
 return *this;
  // size_t currentOffset = 0;
  // size_t totalSizeAllocated = 0;
  // size_t newCapacity = mSize + src.mSize + 200;
  // Patch *newPatches = new Patch[newCapacity];
  // Patch splitPatch;
  // size_t incPatch = 0;

  // size_t i = 0;
  // size_t currentPos = 0;
  // while (currentPos < pos)
  // {
  //   if (mPatches[currentPos].mLength + currentOffset > pos)
  //   {

  //     size_t patchOffset = 0;
  //     size_t patchLen = pos - totalSizeAllocated;
  //     Patch patch(mPatches[currentPos].data, patchLen, patchOffset);
  //     splitPatch = Patch(mPatches[currentPos].data, mPatches[currentPos].mLength - patchLen, patchLen);
  //     newPatches[i++] = patch;
  //     currentPos++;
  //     currentOffset += patchLen;
  //     totalSizeAllocated += patchLen;
  //     incPatch++;
  //     break;
  //   }
  //   else
  //   {
  //     newPatches[i++] = mPatches[currentPos++];
  //     totalSizeAllocated += newPatches[i - 1].mLength;
  //   }
  // }
  // for (size_t j = 0; j < src.mSize; j++)
  // {
  //   newPatches[i++] = src.mPatches[j];
  // }
  // newPatches[i++] = splitPatch;
  // while (currentPos < mSize)
  // {
  //   if (i > newCapacity)
  //   {

  //   };
  //   newPatches[i++] = mPatches[currentPos];
  //   currentPos += 1;
  // }

  // delete[] mPatches;

  // mPatches = newPatches;
  // mSize = newCapacity;
  // mCapacity = newCapacity;
  // return *this;
}

CPatchStr &CPatchStr::remove(size_t pos, size_t len)
{
  if (pos + len > this->size())
    throw std::out_of_range("Out of range");
  if(len == 0){
    return *this;
  }
  

 // Patch *newPatch = new Patch[mCapacity];
 // std::cout << " 0+pos-1 is " << pos << " size is " << this->size() << std::endl;
  CPatchStr leftPart = this->subStr(0,pos);
 // std::cout<<" lef tpart is " << leftPart.toStr() <<"   hererere\n" ;
 // std::cout << " right part is " << pos+len -1 << std::endl;
  CPatchStr rightPart = this->subStr(pos+len, this->size()-(pos+len));
  leftPart.append(rightPart);
  //std::cout<< leftPart.toStr() << std::endl;
  *this = std::move(leftPart);

  return *this;


}

char *CPatchStr::toStr() const
{
  size_t totalLength = 0;
  for (size_t i = 0; i < mSize; i++)
  {
    totalLength += mPatches[i].mLength;
  }

  char *result = new char[totalLength + 1];
  result[totalLength] = '\0';

  char *current = result;
  for (size_t i = 0; i < mSize; ++i)
  {
    if (mPatches[i].mLength == 0)
      continue;
    const char *data = mPatches[i].getData();

    std::memcpy(current, data, mPatches[i].mLength);
     delete[] data;
    current += mPatches[i].mLength;
  }

  return result;
}

#ifndef __PROGTEST__
bool stringMatch(char *str,
                 const char *expected)
{
  bool res = std::strcmp(str, expected) == 0;
    //  std::cout << "deallocated " << &str << std::endl;
  delete[] str;
  return res;
}

int main()
{
  char tmpStr[100];

  CPatchStr a("test");

  assert(stringMatch(a.toStr(), "test"));
  std::strncpy(tmpStr, " da", sizeof(tmpStr) - 1);
  a.append(tmpStr);
  assert(stringMatch(a.toStr(), "test da"));
  std::strncpy(tmpStr, "ta", sizeof(tmpStr) - 1);
  a.append(tmpStr); //
  assert(stringMatch(a.toStr(), "test data"));
  std::strncpy(tmpStr, "foo text", sizeof(tmpStr) - 1);
  CPatchStr b(tmpStr);
  assert(stringMatch(b.toStr(), "foo text"));
  ////std::cout << "=========================================================\n";
  CPatchStr c(a);
  //   ////std::cout<<"copy done\n";
  assert(stringMatch(c.toStr(), "test data"));
  CPatchStr d(a.subStr(3, 5));
  ////std::cout << d.toStr() << std::endl;
  assert(stringMatch(d.toStr(), "t dat"));
  d.append(b);
  ////std::cout << " d is "<<d.toStr() << std::endl;
  assert(stringMatch(d.toStr(), "t datfoo text"));
  ////std::cout<< "====================\n";
  ////std::cout << "b subStr 3 4 is " << b.subStr(3, 4).toStr() << std::endl;
  d.append(b.subStr(3, 4));
  assert(stringMatch(d.toStr(), "t datfoo text tex"));
  c.append(d);
  assert(stringMatch(c.toStr(), "test datat datfoo text tex"));
  ////std::cout << "\nhereee======================\n";
  c.append(c);
  assert(stringMatch(c.toStr(), "test datat datfoo text textest datat datfoo text tex"));
  ////std::cout << " c is " << c.subStr(6, 9).toStr() << "\n=================" << std::endl;
  assert(stringMatch(c.subStr(6, 9).toStr(), "atat datf"));
  d.insert(2, c.subStr(6, 9));
  assert(stringMatch(d.toStr(), "t atat datfdatfoo text tex"));
  b = "abcdefgh";
  assert(stringMatch(b.toStr(), "abcdefgh"));
  assert(stringMatch(d.toStr(), "t atat datfdatfoo text tex"));
  assert(stringMatch(d.subStr(4, 8).toStr(), "at datfd"));
  assert(stringMatch(b.subStr(2, 6).toStr(), "cdefgh"));
  //std::cout << "b is " << b.toStr() << std::endl;
  try
  {
    b.subStr(2, 7).toStr();
    assert("Exception not thrown" == nullptr);
  }
  catch (const std::out_of_range &e)
  {
  }
  catch (...)
  {
    assert("Invalid exception thrown" == nullptr);
  }
  a.remove(3, 5);
  assert(stringMatch(a.toStr(), "tesa"));

  CPatchStr e("test");
  e.append(" data");
  assert(stringMatch(e.toStr(), "test data"));
//  e.remove(0, 0);
  //std::cout << e.toStr() << std::endl;
  //assert(stringMatch(e.toStr(), "t data"));
  return EXIT_SUCCESS;
}
#endif /* __PROGTEST__ */
