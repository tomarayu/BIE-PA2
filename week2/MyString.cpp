#include <iostream>
#include <cstring>
#include <algorithm>

using namespace std;


class MyString{
    private:
    const char *m_data;
    size_t size;
    public:
    MyString(const char* data){
        this->m_data = data;
        this->size = strlen(data);
    }
    ~MyString(){};

    void print(){
        cout << m_data << endl;
    }
    size_t get_size(){
        return size;
    }

    char begin(){
        return m_data[0];
    }
    char end(){
        return m_data[size-1];
    }
    MyString to_lower(){
        char *newstring = char[size];
        return transform(m_data, size, newstring ,::tolower);
    }


};




int main(){
    MyString A("Ayush");
    MyString B("Phyo");
    A.print();
    B.print();
    cout<< A.get_size() << endl;
    cout<< A.begin() << endl;
    cout<< A.end() << endl;

    
}