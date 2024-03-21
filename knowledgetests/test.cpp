#include <iostream>

int & foo(int *a)
{
    return a[3];
}

int main(){
    int y[10];
    y[5] = 5000;
    int *x =y;
    foo(x) = 79;
    x++;

    std::cout<< y[5] <<  " and x is " <<  x << "y is "<<y[3] <<std::endl;
}
