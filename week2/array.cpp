#include <iostream>


using namespace std;

struct Array
{
    size_t size, cap;
    int *data;
};


int& a_at(Array& a, size_t i){return a.data[i]; }

void a_sort(Array& a){
    for(size_t i = 0; i < a.size ; i++){
        for(size_t j = i; j< a.size ; j++){
            if(a_at(a, j) < a_at(a, i)){
                swap(a_at(a, j), a_at(a, i));
            }
        }
    }
};
size_t a_size(Array& a){return a.size;};


void a_init(Array& a ){
    a={};
}
void a_destroy(Array& a){
    delete[] a.data;
}

void a_push(Array& a, int x){
    if(a.size >= a.cap){
        a.cap = a.cap*2 + 2;
        int *new_data = new int[a.cap];
        cout << "size is " << a.size << " and cap is " << a.cap << endl;
        for(size_t i = 0; i< a.size ; i++){
            new_data[i] = a.data[i];
        }
        delete[] a.data;
        a.data = new_data;
    }
    a.data[a.size++] = x;
    return;
}

bool a_read(Array&a, istream& inp = cin){
    int x ; 
    while(inp>>x){
        a_push(a, x);
    }
    return inp.eof();
}

void a_print(const Array& a){
    for(int i = 0; i < a.size ; i++){
        cout<< a.data[i] << " ";
    }
    cout<<endl;
}



int main(){
    Array numbers;
    a_init(numbers);
    cout<<"Enter numbers:- " << endl;
    if(a_read(numbers)){
        a_sort(numbers);
        cout<<"Sorted numbers are :- " << endl;
        a_print(numbers);
    }
    else{
        cout<< "Invalid Input" << endl;
    }
    a_destroy(numbers);
    
}