#include <iostream>
#include <algorithm>
#include <numeric>

class CRat{
    int mNum,mDen;
   // void simplify();

public:
CRat(int num = 0, int den = 1){
    if(den == 0){
        throw std::invalid_argument("denominator is zero");
    }
    this->mNum = num;
    this->mDen = den;
    simplify();
}

int numerator(){
    return mNum;
}
int denominator(){
    return mDen;
}
CRat add(CRat a, CRat b){
    return {a.numerator()*b.denominator()+ a.denominator()*b.numerator(), a.denominator()*b.denominator()};
}
CRat sub(CRat a, CRat b){
    return add(a, neg(b));
}
CRat neg(CRat a){
    return {-a.denominator(), a.denominator()};
}
//bool operator == (const CRat & a, )
void print(std::ostream & os) const{
    os << "(" << mNum << "/" << mDen << ")";
}
bool equal(CRat a, CRat b){
    return a.denominator()==b.denominator() && a.numerator()==b.numerator(); 
}

void simplify(){
    if(mDen<0){
        mNum = -mNum;
        mDen = - mDen;
    }
    int x = std::gcd(mNum, mDen);
    mNum /= x ;
    mDen /= x;
}

};

int main(){
    CRat num1(5,3);
    num1.print(std::cout);
    CRat num2(7,2);
    num2.print(std::cout);
    CRat num3(25/15);
    num3.print(std::cout);
    std::cout<< "\n" << std::gcd(25,15) << std::endl;
}