#include <iostream>
#include <iomanip>
#include <sstream>
#include <limits>
#include <string>

using namespace std;

bool parse_complex(const string &line, double &re, double &im){
    istringstream iss (line);

    double localRe;
    double localIm;
    char dummy1, dummy2, dummy3;

    iss >> dummy1 >> localRe >> dummy2 >> localIm >> dummy3;

    if(iss.good() && dummy1=='(' && dummy2==','&& dummy3 == ')'){
        re = localRe;
        im = localIm;
        return true;
    }
    return false;

}

int main(){

    double re;
    double im;
    string line;

    cout << "Enter complex number in (re, im) format, one per line" << endl;
    while(getline(cin, line)){
        if(cin.eof()){
            break;
        }
        if(parse_complex(line, re, im)){
            cout<< "Complex number is =>> " << re << " " << im << "i"<< endl;
        }
        else{
            cout<< "Invalid format " << endl;
        }
        cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    }
    
    return 0;
}