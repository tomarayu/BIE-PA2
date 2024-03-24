#include <iostream>
#include <cstring>
#include <string.h>



class CStr{
private:
    char *mData = nullptr;
    size_t mSize = 0;
    size_t mCapacity =0;

    void set(const char * source, size_t len){
        mSize = len;
        mCapacity = len;
        mData = new char[mSize+1];
        memcpy(mData, source, mSize);
        mData[mSize] = '\0';
    }
public:
    CStr(const char * source = ""){
        printf("Calling string constructor\n");
        set(source, strlen(source));
    }
    CStr(char c){
        set(&c , 1);
    }
    CStr(int number){
        char buffer[15];
        snprintf(buffer, 15, "%d", number);
        set(buffer, strlen(buffer));
    }
    ~CStr(){
        delete[] mData;
    }

    CStr& operator = (const CStr& other){
        if(this == &other) return *this;
        this-> ~CStr();
        set(other.mData, other.mSize);
        return *this;
    }

    CStr (CStr && other)noexcept{
        mSize = other.mSize;
        mCapacity = other.mCapacity;
        mData = other.mData;

        other.mData = nullptr;
    }

    friend std::ostream& operator << (std::ostream& os , const CStr& value){
        return os << value.mData ;
    }

};


int main(){
    CStr a ("Ayush");
    CStr b = "phyo";
    CStr c;
    c = a;
    std::cout  << "c is "<< c <<std::endl;
    CStr e(std::move(b));
    std::cout << "a is "<< a <<std::endl;
   // std::cout  << "b is "<< b <<std::endl;
    std::cout  << "e is "<< e <<std::endl;






    return 0;
}