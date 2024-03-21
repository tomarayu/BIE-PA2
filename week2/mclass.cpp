#include <iostream>

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
    ~CComplex(){};
    void print(CComplex comp){
        cout<< "( " <<comp.m_x << " , " << comp.m_y  << " )"<<  endl;
    }

};

int main(){
    CComplex numA;
    CComplex numB(4, 7);
    CComplex numC(3.2, 5.6);
}