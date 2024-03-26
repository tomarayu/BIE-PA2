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

class CString{
  public:
  CString(const char* str="");
  ~CString(){delete[] mData;}

  char* data()const{return mData;};
  size_t getSize()const{return mSize;};

  friend std::ostream& operator<< (std::ostream& os, const CString& obj){
    return os << obj.mData;
  }

private:
  void set(const char* str , size_t len){
    mSize = len;
    mCapacity = len;
    mData = new char[mSize+1];
    memcpy(mData, str, mSize);
    mData[mSize] = '\0';
  }

  char *mData = nullptr;
  size_t mSize=0;
  size_t mCapacity=0;
  size_t refCount=1;
};

CString::CString(const char *str){
  set(str, strlen(str));
}





struct Patch{

  std::shared_ptr<CString> data;
  size_t mLength;
  size_t mOffset;
  Patch(std::shared_ptr<CString>data , size_t length, size_t offset)
  : data(std::move(data)), mLength(length), mOffset(offset){}
};

struct Node{
  Patch mPatch;
  Node *mNext;
  Node(const Patch& patch, Node* next) : mPatch(patch), mNext(next){}
};

class CPatchStr
{
  public:
                CPatchStr ();
                CPatchStr ( const char * str ){
                  std::shared_ptr<CString> cstr = std::make_shared<CString>(str);
                  Patch patch(cstr, cstr->getSize(), 0);
                  mFirst = new Node(patch, nullptr); 
                  std::cout << *cstr << std::endl;
                }
    // copy constructor
    CPatchStr(const CPatchStr& other) : mFirst(nullptr){
      Node* otherCurrentNode = other.mFirst;
      Node **thisCurrentNodePtr = &mFirst;
      while(otherCurrentNode!=nullptr){
        std::shared_ptr<CString>sharedData = otherCurrentNode->mPatch.data;
        Patch newPatch(sharedData, sharedData->getSize(), otherCurrentNode->mPatch.mLength);
        *thisCurrentNodePtr = new Node(newPatch, nullptr);
        thisCurrentNodePtr = &(*thisCurrentNodePtr)->mNext;
        otherCurrentNode = otherCurrentNode->mNext;
      }
    }

    // destructor 
    ~CPatchStr(){
      Node *currentNode = mFirst;
      while(currentNode != nullptr){
        Node *nextNode = currentNode->mNext;
        delete currentNode;
        currentNode = nextNode;
      }
    }
    // operator =
    CPatchStr   subStr    ( size_t            from,
                            size_t            len ) const
    {
    
    //   char *str = new char[len+1];
    //   str[len] = '\0';
    // //  str = this->toStr();
    //   memcpy(str, this->toStr()+from, len);
    //   std::cout<<str<<std::endl;
    //   return str;
      Node* currentNode = mFirst;
      while(currentNode != nullptr){
        if(from >= currentNode->mPatch.mOffset && from+len<= currentNode->mPatch.mOffset+ currentNode->mPatch.mLength){
          std::shared_ptr<CString> sharedData = currentNode->mPatch.data;
          Patch newPatch(sharedData, len, from);
          return CPatchStr(newPatch);
        }
        currentNode = currentNode->mNext;
      }
      throw std::out_of_range("Substring out of range");
    }
    CPatchStr & append    ( const CPatchStr & src ){
      if(src.mFirst == nullptr){
        return *this;
      }
      Node* otherNode = src.mFirst;
      while(otherNode!=nullptr){
        std::shared_ptr<CString> cstr = otherNode->mPatch.data;
        Patch patch(cstr, cstr->getSize(), 0);
        Node *newNode = new Node(patch, nullptr);

        if(mFirst == nullptr){
          mFirst = newNode;
        }
        else{
          Node* currentNode = mFirst;
          while(currentNode->mNext!=nullptr){
            currentNode = currentNode->mNext;
          }
          currentNode->mNext= newNode;
        }
        otherNode = otherNode->mNext;
      }
      std::cout << this->mFirst->mPatch.data << std::endl;;
      return *this;
    }

    CPatchStr & insert    ( size_t            pos,
                            const CPatchStr & src );
    CPatchStr & remove    ( size_t            from,
                            size_t            len );
    char      * toStr     () const{
      if(mFirst == nullptr) return nullptr;

      //Calculate the total length of the concatenated string
      size_t totalLength = 0;
      Node *currentNode = mFirst;
      while(currentNode != nullptr){
        totalLength+=currentNode->mPatch.mLength;
        currentNode = currentNode->mNext;
      }

      //Allocate memory for the concatenated string
      char *result = new char[totalLength+1];
      result[totalLength] = '\0';

      //copy the strings fromeach node to the result string
      size_t currentPos = 0;
      currentNode = mFirst;
      while(currentNode!=nullptr){
        const char * currentStr = currentNode->mPatch.data->data();
        size_t currentSize = currentNode->mPatch.mLength;
        std::memcpy(result+currentPos, currentStr, currentSize);
        currentPos+=currentSize;
        currentNode = currentNode->mNext;
      }
      return result;
    };
  private:
    Node *mFirst = nullptr;
};

#ifndef __PROGTEST__
bool stringMatch ( char       * str,
                   const char * expected )
{
  bool res = std::strcmp ( str, expected ) == 0;
  delete [] str;
  return res;
}

int main ()
{
  char tmpStr[100];

  CPatchStr a ( "test" );
  
   assert ( stringMatch ( a . toStr (), "test" ) );
   std::strncpy ( tmpStr, " da", sizeof ( tmpStr ) - 1 );
   a . append ( tmpStr );
   assert ( stringMatch ( a . toStr (), "test da" ) );
   std::strncpy ( tmpStr, "ta", sizeof ( tmpStr ) - 1 );
   a . append ( tmpStr );
   assert ( stringMatch ( a . toStr (), "test data" ) );
   std::strncpy ( tmpStr, "foo text", sizeof ( tmpStr ) - 1 );
   CPatchStr b ( tmpStr );
   assert ( stringMatch ( b . toStr (), "foo text" ) );
   CPatchStr c ( a );
   assert ( stringMatch ( c . toStr (), "test data" ) );
  CPatchStr d ( a . subStr ( 3, 5 ) );
   assert ( stringMatch ( d . toStr (), "t dat" ) );
  // d . append ( b );
  // assert ( stringMatch ( d . toStr (), "t datfoo text" ) );
  // d . append ( b . subStr ( 3, 4 ) );
  // assert ( stringMatch ( d . toStr (), "t datfoo text tex" ) );
  // c . append ( d );
  // assert ( stringMatch ( c . toStr (), "test datat datfoo text tex" ) );
  // c . append ( c );
  // assert ( stringMatch ( c . toStr (), "test datat datfoo text textest datat datfoo text tex" ) );
  // d . insert ( 2, c . subStr ( 6, 9 ) );
  // assert ( stringMatch ( d . toStr (), "t atat datfdatfoo text tex" ) );
  // b = "abcdefgh";
  // assert ( stringMatch ( b . toStr (), "abcdefgh" ) );
  // assert ( stringMatch ( d . toStr (), "t atat datfdatfoo text tex" ) );
  // assert ( stringMatch ( d . subStr ( 4, 8 ) . toStr (), "at datfd" ) );
  // assert ( stringMatch ( b . subStr ( 2, 6 ) . toStr (), "cdefgh" ) );
  // try
  // {
  //   b . subStr ( 2, 7 ) . toStr ();
  //   assert ( "Exception not thrown" == nullptr );
  // }
  // catch ( const std::out_of_range & e )
  // {
  // }
  // catch ( ... )
  // {
  //   assert ( "Invalid exception thrown" == nullptr );
  // }
  // a . remove ( 3, 5 );
  // assert ( stringMatch ( a . toStr (), "tesa" ) );
  return EXIT_SUCCESS;
}
#endif /* __PROGTEST__ */
