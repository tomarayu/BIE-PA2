#include <stdio.h>
#include <iostream>



int main(){
    int number = 232434;
    char buffer[15];
    snprintf(buffer, 15, "%d", number);
    std::cout<< buffer <<std::endl;
    return 0;
}