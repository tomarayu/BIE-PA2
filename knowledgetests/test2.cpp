#include <iostream>

using namespace std;



class A
 {
   public:
             A ( int x ) { m_X = x; }
    virtual ~A ( void ) { } 
    virtual void print ( void ) const { cout << m_X; }
   private: 
    int m_X;
 };

class B : public A
 {
   public:
          B ( int x, int y ) : A ( x ) { m_Y = y; }
    virtual void print ( void ) const { A::print (); cout << m_Y; }
   private: 
    int m_Y;
 };

void foo ( A & val )
 {
   val . print ( );
 }

int main ( void )
 {
   B test ( 38, 59 );

   foo ( test );
   return 0;
 }