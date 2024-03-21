#include <iostream>
#include <vector>
#include <algorithm>
#include <string>


class Boat{
    std::string m_name;
    size_t m_price;
    size_t m_capacity;
public:
    Boat(std::string name, size_t price, size_t capacity){
        m_name = name;
        m_price = price;
        m_capacity = capacity;
    }
    size_t getprice()const{
        return m_price;
    }
    bool operator == (const Boat& boat)const{
        return m_name==boat.m_name ;
    }
    bool operator < (const Boat& other)const{
        return m_name< other.m_name;
    }

    friend std::ostream & operator << (std::ostream & os, const Boat & boat){
        return os << boat.m_name << " , " << boat.m_price << " , " << boat.m_capacity ;
    }
};

class Port{
    std::vector<Boat>boats;
public:
    void add(Boat boat){
        size_t idx;
        if((boatexists(boat, idx))){
            throw std::invalid_argument("Invalid argument");
        }
        boats.push_back(boat);
        std::sort(boats.begin(), boats.end());

    }

    bool boatexists(const Boat & boat, size_t & idx){
        auto it = std::find(boats.begin(), boats.end(), boat);
        return it!= boats.end();

    }
    void print(){
        for(const Boat & boat : boats){
            std::cout << boat << std::endl;
        }
    }


};




int main(){
    Port port;
    port.add(Boat("myboat", 258 , 1000));
    port.add(Boat("yourboat", 259 , 2000));
    port.add(Boat("a", 258 , 1000));
    port.add(Boat("b", 259 , 2000));
    port.add(Boat("n", 258 , 1000));
    port.add(Boat("e", 259 , 2000));
    //port.add(Boat("yourboat", 259 , 2000));
    port.print();

    


    return 0;
}