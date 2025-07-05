#include <iostream>


using namespace std;


class CNum
 {
   public:
          CNum ( int x ) { m_X = x; }
          CNum ( const CNum & src ) { m_X = src . m_X; cout << m_X; }
    friend ostream & operator << ( ostream & os, const CNum & x );
   private:
    int m_X;
 };
   
ostream & operator << ( ostream & os, const CNum & x )
 {
   os << x . m_X;
   return os;
 }   
     
int main ( void )
 {
   CNum a ( 95 ), b = a;
cout << a;   


 }

