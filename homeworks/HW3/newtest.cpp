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
  CString(const char *str = "");
  ~CString() { delete[] mData; }

  char *data() const { return mData; };
  size_t getSize() const { return mSize; };

  const char *substr(size_t pos, size_t len) const
  {
    // std::cout<< "pos is " << pos << " len is " << len << "mSize is "<< mSize << std::endl;
   //  if(pos > len) throw std::out_of_range("Position is out of range");
    len = std::min(len, mSize - pos);
     ////std::cout<<"hereeeeeeeeeeeeeeee==\n";
    char *subStr = new char[len + 1];
   // //std::cout<<"hereeeeeeeeeeeeeeee==\n";
    std::memcpy(subStr, mData + pos, len);
    subStr[len] = '\0';
    // //std::cout << "sub str here in substr is " << subStr << std::endl;
    // //std::cout << "mData here in substr is " << mData << std::endl;
    return subStr;
  }

  friend std::ostream &operator<<(std::ostream &os, const CString &obj)
  {
    return os << obj.mData;
  }

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
  //std::cout << "mData is " << mData << std::endl;
}

struct Patch
{

  std::shared_ptr<CString> data;
  size_t mLength;
  size_t mOffset;
  Patch(): data(nullptr),mLength(0) , mOffset(0) {}
  Patch(std::shared_ptr<CString> data, size_t length, size_t offset)
      : data(std::move(data)), mLength(length), mOffset(offset) {}

  const char *getData() const
  {
    //std::cout<< " returning " << data->substr(mOffset, mLength) << std::endl;
    return data->substr(mOffset, mLength);
  }
};

// struct Node
// {
//   Patch mPatch;
//   Node *mNext;
//   Node(const Patch &patch, Node *next) : mPatch(patch), mNext(next) {}
// };

class CPatchStr
{
public:
~CPatchStr(){
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
  CPatchStr(): mSize(0), mCapacity(1){
    mPatches = new Patch[mCapacity];
  }
  CPatchStr(const char *str){
    std::shared_ptr<CString>cstr = std::make_shared<CString>(str);
    mPatches = new Patch[mCapacity];
    Patch patch(cstr, cstr->getSize(), 0);
    appendPatch(patch);
  }
  CPatchStr &append(const CPatchStr &src);
  CPatchStr subStr(size_t offset, size_t len);
  CPatchStr& insert(size_t pos , const CPatchStr &src);
  CPatchStr& remove(size_t pos, size_t len);
  size_t size() const { 
    size_t totalLength = 0;
    for(size_t i = 0 ; i < mSize; i++){
      if(mPatches[i].mLength == 0) continue;
      totalLength+= mPatches[i].mLength;
      std::cout<< "mpatch is ->" << mPatches[i].getData() << "<-"<< std::endl;
    }
    return totalLength;
  } 

  CPatchStr(const CPatchStr &src){
    mPatches = new Patch[src.mCapacity];
    for(size_t i = 0; i< src.mSize; i++){
      mPatches[i] = src.mPatches[i];
    }
    mSize = src.mSize;
    mCapacity = src.mCapacity;
  }
  void appendPatch(const Patch& patch);

  char *toStr() const;
private:
  Patch *mPatches;
  size_t mSize=0;
  size_t mCapacity=1;
  //size_t mAppended = 1;
};
  void CPatchStr::appendPatch(const Patch& patch){
  //  //std::cout<< "appending patch\n";
    //std::cout<< mSize << " " << mCapacity << std::endl;
    if(mSize == mCapacity){
      //std::cout<< "resizing\n";
        size_t newCapacity = mCapacity == 0 ? 1 : mCapacity*2;
        Patch* newPatches = new Patch[newCapacity];
        for(size_t i= 0; i< mSize ;i++){
            newPatches[i] = mPatches[i];
        }
        delete[] mPatches;
        mPatches = newPatches;
        mCapacity = newCapacity;
    }
    //std::cout<< "mpatch is "<<patch.getData() << std::endl;
    //std::cout<< "mpatch length is "<< &mPatches[0] << std::endl;
    mPatches[mSize++] = patch;
    //std::cout<< "mpactch is "<<mPatches[mSize-1].getData() << std::endl;
  }

CPatchStr& CPatchStr::append(const CPatchStr &src){
  if(this == &src){
    size_t newCapacity = mCapacity == 0 ? 1 : mCapacity*2;
    Patch* newPatches = new Patch[newCapacity];
    for(size_t i= 0; i< mSize ;i++){
        newPatches[i] = mPatches[i];
    }
    delete[] mPatches;
    mPatches = newPatches;
    mCapacity = newCapacity;
    for(size_t i= mSize; i< newCapacity ;i++){
        newPatches[i] = mPatches[i-mSize];
    }
    mSize = mSize*2;
  }
  else{
  for(size_t i = 0; i< src.mSize; i++){
    if(mSize+src.mSize > mCapacity){
      mCapacity*=2;
      Patch* newPatches = new Patch[mCapacity];
      for(size_t j= 0 ; j< mSize; j++){
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

  CPatchStr  CPatchStr::subStr(size_t offset, size_t len){
    if(offset+len > this->size()) throw std::out_of_range("Out of range");
    CPatchStr result;
    size_t currentOffset = 0;

    for (size_t i = 0; i< mSize; ++i){
      size_t patchSIze = mPatches[i].mLength;
      //std::cout<< "patch size is " << patchSIze << std::endl;

      //Check if the patch is before the substring
      if(currentOffset + patchSIze > offset && currentOffset < offset + len){
        //std::cout<< "patch is in the substring\n";
          size_t patchOffset = std::max(offset, currentOffset) - currentOffset;
          size_t patchLen = std::min(currentOffset + patchSIze, offset + len) - (currentOffset+patchOffset);


          //Create a new patch
          //std::cout<< "patch offset is "<< patchOffset << " patch len is "<< patchLen << std::endl;
          Patch patch(mPatches[i].data, patchLen, mPatches[i].mOffset + patchOffset);
         // mPatches = new Patch[mCapacity];
          //std::cout<< "here=====\n";
          result.appendPatch(patch);
          //std::cout<< "here\n";
          //std::cout<< "patch is "<< patch.getData() << std::endl;
      }
      currentOffset += patchSIze;
    }
    return result;

  }

  CPatchStr& CPatchStr::insert(size_t pos, const CPatchStr &src) {
      if(src.mSize == 0) return *this; //Nothing to insert
      if(pos > this->size()) throw std::out_of_range("Position is out of range");
      size_t currentLength = this->size();
      size_t currentOffset = 0;
      size_t totalSizeAllocated = 0;
      size_t newCapacity = mSize + src.mSize+200;
      Patch* newPatches = new Patch[newCapacity];
      Patch splitPatch;
      size_t incPatch = 0;

      size_t i = 0;
      size_t currentPos = 0;
      while(currentPos < pos){
          size_t temp = i;
          std::cout<< "pos is " << pos << std::endl;
          std::cout<< "current offset is " << currentOffset << std::endl;
          std::cout<< "current length is " << mPatches[currentPos].mLength << std::endl;
   
          if(mPatches[currentPos].mLength + currentOffset > pos){
              
              size_t patchOffset = 0;
              size_t patchLen = pos - totalSizeAllocated;
              Patch patch(mPatches[currentPos].data, patchLen, patchOffset);
              splitPatch = Patch(mPatches[currentPos].data, mPatches[currentPos].mLength - patchLen, patchLen);
              newPatches[i++] = patch;
              std::cout<< "shifted >>" << newPatches[i-1].getData() <<"<<"<< std::endl;
              std::cout<< "i is " << i << std::endl;
              currentPos++;
              std::cout<< "currentPos is " << currentPos << std::endl;
              currentOffset += patchLen;
              totalSizeAllocated+=patchLen;
              incPatch++;
              break;
          }
          else{
              newPatches[i++] = mPatches[currentPos++];
              totalSizeAllocated+=newPatches[i-1].mLength;
              std::cout<< "shifted " << newPatches[i-1].getData() << std::endl;
              std::cout << "i is " << i << std::endl;
              std::cout << "currentPos is " << currentPos << std::endl;
              //exit(0);
          }
          //newPatches[i] = mPatches[currentPos];  
      }
      std::cout<< ".size() is "<< this->size() << std::endl;
      std::cout<< "i is " <<    i << std::endl;
      for(size_t j = 0; j< src.mSize; j++){
          newPatches[i++] = src.mPatches[j];
          std::cout<< "shifted " << newPatches[i-1].getData() << std::endl;
          std::cout<< "i is " << i << std::endl;
      }
      newPatches[i++] = splitPatch;
      std::cout<< "split patch is " << newPatches[i-1].getData() << "\n and currentPos is " << currentPos<<std::endl;
      std::cout << "newpatch ind is " << i << src.mSize<<incPatch << std::endl;
      while(currentPos < mSize){
        std::cout<< "mPatches[currpos] is >>" << mPatches[currentPos].getData()<<"<<" << std::endl;
      //  if(currentPos == mSize-1)break;
        std::cout<< "currentPos is " << currentPos << std::endl;
        std::cout<< "mSize is " << mSize<< std::endl;
        if(i>newCapacity){std::cout<< "out of range\n"; exit(0);}
        std::cout<< " address is  "<< &newPatches[i] << std::endl;
          newPatches[i++] = mPatches[currentPos];
          currentPos+=1;
         // std::cout<< "shifted " << newPatches[i-1].getData() << std::endl;
      }

      delete[] mPatches;

      mPatches = newPatches;
      mSize = newCapacity;
      mCapacity = newCapacity;
      std::cout<< "this is " << this->toStr() << std::endl;
     std::cout<< "returning\n";
      return *this;
      
  }

  CPatchStr& CPatchStr::remove(size_t pos, size_t len){
     if(pos+len> this->size()) throw std::out_of_range("Out of range");

    // CPatchStr result;
    // size_t currentOffset = 0;
    // size_t totalSizeAllocated = 0;
    // Patch* newPatch  = new Patch[mCapacity];
    // size_t currSzie = 0;
    // size_t i = 0;
    // size_t currentPos = 0;
    //     while(currSzie < pos){
    //     newPatch[i++]=mPatches[i++];
    //     currSzie+=mPatches[i-1].mLength;
    // }

    // pos-=currSzie;
    // if(pos>0){
    //     size_t patchOffset = 0;
    //     size_t ind = i;
    //     size_t patchLen = pos;
    //     Patch patch(mPatches[currentPos].data, patchLen, patchOffset);
    //     newPatch[i++] = patch;
    //     currentPos++;
    //     len-=mPatches[ind].mLength-pos;
    //     currentOffset+=patchLen;
    //     totalSizeAllocated+=patchLen;
    // }
    // while(len+mPatches[i].mLength >0){
    //   len-=mPatches[i++].mLength;
    // }
    // if(len>0){
    //     size_t patchOffset = mPatches[i].mLength-len;
    //     size_t patchLen = len;
    //     Patch patch(mPatches[currentPos].data, patchLen, patchOffset);
    //     newPatch[i++] = patch;
    //     currentPos++;
    //     currentOffset+=patchLen;
    //     totalSizeAllocated+=patchLen;
    // }
    // size_t currInd = 


    // // Replace the current patches with the new patches
    // delete[] mPatches;
    // mPatches = new Patch[result.mSize];
    // mSize = result.mSize;
    // for(size_t i = 0; i < mSize; ++i) {
    //     mPatches[i] = result.mPatches[i];
    // }
  Patch* newPatch = new Patch[mCapacity];
  size_t newSize = 0;
  size_t currPos = 0;
  // std::cout << "mSize is " << mSize << std::endl;
  // // Copy patches before the removal range
  // for(size_t i =0; i < mSize ; i++){
  //   if(currPos+ mPatches[i].mLength <= pos){
  //      std::cout<< "this shouldn't print\n";
  //     newPatch[newSize++] = mPatches[i];
  //     currPos+=mPatches[i].mLength;
  //   }
  //   else if(currPos < pos){
  //     std::cout<< "here===========================\n";
  //     size_t patchLen = pos - currPos;
  //     Patch patch(mPatches[i].data, patchLen, 0);
  //     std::cout << "patch added is " << patch.getData() << std::endl;
  //     newPatch[newSize++] = patch;
  //     currPos+=patchLen;
  //   } 

  //   // Skip patches in the removal range
  //   if(currPos+mPatches[i].mLength > pos+len){
  //     std::cout<<"skipping\n";
  //     currPos += mPatches[i].mLength;
  //   }
  //   else if(currPos < pos+len) {
  //     size_t patchOffset = pos+len -currPos;
  //     size_t patchLen = mPatches[i].mLength - patchOffset;
  //     std::cout<< "patch offset is " << patchOffset << " patch len is " << patchLen << std::endl;
  //     Patch patch(mPatches[i].data, patchLen, patchOffset);
  //     std::cout<< "patch added here is>>"<< patch.getData()<<"<<" << std::endl;
  //     newPatch[newSize++] = patch;
  //     currPos+=patchLen;
  //   }
  // }

  std::cout << "mSize is " << mSize << std::endl;
  size_t currLen = 0;

  for(size_t i = 0 ; i< mSize; i++){
    std::cout<< "mPatches[i] is " << mPatches[i].getData() << std::endl;
    if(pos < currPos+mPatches[i].mLength && currLen == 0){
        size_t patchOffset = currPos;
        size_t patchLen = pos;
        Patch patch(mPatches[i].data, patchLen, patchOffset);
        newPatch[newSize++] = patch;
        currPos+=mPatches[i].mLength;
        currLen+= mPatches[i].mLength-patchLen;
        std::cout<< "1st cond shifted >>" << newPatch[newSize-1].getData() <<"<<"<< std::endl;
        std::cout<< "currPos is " << currPos << std::endl;
        continue;
    }
    if(pos >= currPos+mPatches[i].mLength){
      newPatch[newSize++] = mPatches[i];
      currPos+=mPatches[i].mLength;
      std::cout<< "2nd cond shifted " << newPatch[newSize-1].getData() << std::endl;
      std::cout<< "currPos is " << currPos << std::endl;
      continue;
    }
    else if (currLen+mPatches[i].mLength < len){
      std::cout<< "here===========================\n";
      currPos+=mPatches[i].mLength;
      currLen+=mPatches[i].mLength;
    }
    else{
      size_t patchOffset = pos+len - currPos;
      size_t patchLen = mPatches[i].mLength - patchOffset;
      Patch patch(mPatches[i].data, patchLen, patchOffset);
      newPatch[newSize++] = patch;
      currPos+=patchLen;
      std::cout<< "3rd cond shifted " << newPatch[newSize-1].getData() << std::endl;
    }
    
  }
  
// Copy patches before the removal range

  // Replace the current patches with the new patches
  delete[] mPatches;
  mPatches = newPatch;
  mSize = newSize;
  
  return *this;

  }

    char * CPatchStr::toStr() const{
    size_t totalLength = 0;
    for(size_t i =0; i< mSize; i++){
        totalLength+= mPatches[i].mLength;
    }
   // std::cout<< "total length is " << totalLength << std::endl;

    char* result = new char[totalLength+1];
    result[totalLength] = '\0';

    char *current = result;
        for (size_t i = 0; i < mSize; ++i) {
          if(mPatches[i].mLength == 0) continue;
        const char* data = mPatches[i].getData();
        
        std::memcpy(current, data, mPatches[i].mLength);
       // std::cout<< "current is " << current << std::endl;
        current += mPatches[i].mLength;
    }

    return result;
  }

#ifndef __PROGTEST__
bool stringMatch(char *str,
                 const char *expected)
{
  bool res = std::strcmp(str, expected) == 0;
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
   a.append(tmpStr);//
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
    assert(stringMatch(c.subStr(6,9).toStr(), "atat datf"));
   d.insert(2, c.subStr(6, 9));
//   ////std::cout<<"hiii\n";
  ////std::cout << " D is" << d.toStr() << std::endl;
  ////std::cout<< d.mFirst->mPatch.getData()<< std::endl;
  ////std::cout << "\nhereee==\n";
  assert(stringMatch(d.toStr(), "t atat datfdatfoo text tex"));
   b = "abcdefgh";
   assert ( stringMatch ( b . toStr (), "abcdefgh" ) );
   assert ( stringMatch ( d . toStr (), "t atat datfdatfoo text tex" ) );
   assert ( stringMatch ( d . subStr ( 4, 8 ) . toStr (), "at datfd" ) );
   assert ( stringMatch ( b . subStr ( 2, 6 ) . toStr (), "cdefgh" ) );
   std::cout<< "b is " << b.toStr() << std::endl;
   std::cout << "\nhereee==\n";
  try
  {
    b . subStr ( 2, 7 ) . toStr ();
    assert ( "Exception not thrown" == nullptr );
  }
  catch ( const std::out_of_range & e )
  {
  }
  catch ( ... )
  {
    assert ( "Invalid exception thrown" == nullptr );
  }
  std::cout<< "a is " << a.toStr() << std::endl;
   a . remove ( 3, 5 );
  std::cout<< a.toStr() << std::endl;
   assert ( stringMatch ( a . toStr (), "tesa" ) );
  return EXIT_SUCCESS;
}
#endif /* __PROGTEST__ */
