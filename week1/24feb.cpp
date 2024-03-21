#include <iostream>
#include <iomanip>
#include <algorithm>
#include <vector>
#include <fstream>


using namespace std;


int main(){
    vector<int>input;
    int x;
    string name;
    cin>> name;
    while(cin>>x){
        if(cin.eof()){
            break;
        }
        input.push_back(x);

    }
    size_t len = input.size();
    ofstream myfile(name);
    myfile<<len;
    myfile.close();

    


    for(int i : input){
        cout<< i << " ";
    }
    cout<<endl;
    

    return 0;
}