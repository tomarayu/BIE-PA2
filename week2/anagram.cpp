#include <iostream>
#include <iomanip>
#include <algorithm>


using namespace std;

class AnagramChecker{
    private:
    string m_A;
    string m_B;
    public:
    AnagramChecker(string A, string B){
        this->m_A = A;
        this->m_B = B;
    }
    ~AnagramChecker(){};
    bool AreAnagrams(){
        sort(m_A.begin(), m_A.end());
        sort(m_B.begin(), m_B.end());
        if(m_A==m_B){
            return true;
        }
        return false;
    }
    void destroy(){

    }
};

int main(){
    string A, B;
    while(cin>>A>>B){
    AnagramChecker*  checker = new AnagramChecker(A, B);
    if(checker->AreAnagrams()){
        cout<< "These are anagrams" << endl;
    }
    else{
    cout<<"Not anagrams"<< endl;}
    delete checker;
    }
    return 0;

}