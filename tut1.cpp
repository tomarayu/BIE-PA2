#include <iostream>
#include <string>
#include <iomanip>

using namespace std;

int main(){
    int x;
    string c;
    string line;
    cout<< "Enter a  number and a word:" << endl;
    cin >> x >>  setw(10)>>c;
    cout<< "You have entered : "<< x << " "<< c << endl;
    ///sizeof is an operator.
    // (!cin>>x), f>>x , and (!cin) is f

    //when use setw and setprecision , use fixed !!
    return 0;


}