#include <iostream>
#include <exception>
#include <numeric>


class fraction{
    size_t mNum;
    size_t mDem;
    friend std::ostream& operator << (std::ostream& os, const fraction & f);
    friend fraction operator + (const fraction & f1 , const fraction & f2);
    friend fraction operator * (const fraction & f1, const fraction & f2);
    friend bool operator == (const fraction & f1 , const fraction & f2);

public:
    fraction(size_t num = 0 , size_t dem = 1){
    if(dem == 0) throw std::invalid_argument("Den is zero.");
        mNum = num; mDem = dem;
        simplify();
    }

    void simplify(){
        int gcd = std::gcd(mNum, mDem);
        mNum/=gcd;
        mDem/=gcd;
    }

};

fraction operator + (const fraction & f1 , const fraction & f2){
    return fraction(f1.mNum*f2.mDem + f1.mDem*f2.mNum , f1.mDem*f2.mDem);
}
fraction operator - (const fraction & f1, const fraction & f2){
    return f1 + (-1)*f2;
}
fraction operator * (const fraction & f1, const fraction & f2){
    return fraction(f1.mNum*f2.mNum , f1.mDem*f2.mDem);
} 
bool operator == (const fraction & f1 , const fraction & f2){
    return f1.mNum==f2.mNum && f1.mDem == f2.mDem;
}

std::ostream& operator << (std::ostream& os, const fraction & f){
    os <<f.mNum << "/" << f.mDem << " \n";
    return os;
}



int main(){
    fraction f1(3,1);std::cout<<f1 ;
    fraction f2(3,3);std::cout<<f2 ;
    fraction f3(3,5);std::cout<<f3 ;
    fraction f4(3,2);std::cout<<f4 ;
   // fraction f5(3,0);std::cout<<f5 ;
    fraction f5 = f3+f4;
    
    std::cout << f5;
    fraction f6(15/5);
    fraction f7(45/15);
    if(f6 == f7) std::cout<< f6 <<"is  EQUAL to " << f7 << std::endl;
    
   
    return 0;
}