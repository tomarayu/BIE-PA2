#include <iostream>
#include <math.h>

using namespace std;

class CComplex{
    private:
    double m_x;
    double m_y;
    public:
    CComplex(double x, double y){
        this->m_x = x;
        this->m_y = y;
    }
    CComplex(){
        this->m_x = 0;
        this->m_y = 0;
    }

    CComplex(CComplex A, CComplex B){
        this->m_x = A.m_x+B.m_x;
        this->m_y = A.m_y+B.m_y;
    }
    ~CComplex(){};
    void print( ){
        cout<< "( " <<this->m_x << " , " << this->m_y  << " )"<<  endl;
    }
    void addition(CComplex num){
        this->m_x += num.m_x;
        this->m_y += num.m_y;
    }
    void subtraction(CComplex num){
        this->m_x -= num.m_x;
        this->m_y -= num.m_y;
    }
    void mulitply(CComplex num){
        this->m_x *= num.m_x;
        this->m_y *= num.m_y;
    }
    void division(CComplex num){
        this->m_x /= num.m_x;
        this->m_y /= num.m_y;
    }
    void is_equal(CComplex num){
        if(this->m_x==num.m_x && this->m_y == num.m_y){
            cout << "They are equal" <<  endl;
        }
         cout<< "They are not equal" <<endl;
    }
    void abs(){
        double abs;
        abs = sqrt(this->m_x*this->m_x + this->m_y*this->m_y);
        cout<< "Absolute value is " << abs << endl;
    }

};

int main(){
    CComplex numA;
    CComplex numB(4, 7);
    CComplex numE(3, 4);
    CComplex numC(3.2, 5.6);
    numA.print();
    numB.print();
    numC.print();
    CComplex numD(numB , numC);
    numD.print();
    numB.addition(numD);
    numB.print();
    numB.mulitply(numD);
    numB.print();
    numA.is_equal(numB);
    numE.abs();

}