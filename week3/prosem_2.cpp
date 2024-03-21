#include <iostream>
#include <vector>
#include <string>
#include <algorithm>


class CCar{
    std::string m_RZ;
    std::string m_name;
    unsigned int m_age;
public:
    CCar(std::string RZ, std::string name , unsigned int age){
        m_RZ = RZ;
        m_name = name;
        m_age = age;
    }
    
    bool operator == (const CCar & car) const {
        return m_RZ==car.m_RZ;
    }

    bool operator == (const std::string & other)const{
        return m_RZ==other;
    }

    bool newerthan (const CCar & car)const{
        return m_age < car.m_age;
    }

    friend std::ostream & operator << (std::ostream & os, const CCar & car ){
        return os<< "RZ is " << car.m_RZ << " name is " << car.m_name << " age is " << car.m_age ;
    }
 };

class CGarage{
    std::vector<CCar>db;

public:
    bool addCar(CCar car){
        for(const CCar & dbCar : db)
            if(dbCar == car)
            return false;
        db.push_back(car);
        return true;
    }

    bool delCar(std::string RZ){
        for(auto iter = db.cbegin(); iter!=db.cend(); iter++)
            if(*iter == RZ)
                db.erase(iter);
                return true;
        return false;
    }

    void printCars()const{
        for(const CCar & car : db){
            std::cout << car << std::endl;
        }
    }

    void sortCars(){
        std::sort(db.begin(), db.end(), [](const CCar & first, const CCar & second) {return first.newerthan(second);});
    }
    
};








int main(){
    CGarage garage; 
    garage.addCar(CCar("DL 7027", "Ayush Tomar" , 5));
    garage.addCar ( CCar ( "MIA FOREVER", "Unim Portant", 10 ) );
    garage.addCar ( CCar ( "1DR HONZA", "Jan Travnicek", 6 ) );
    garage.printCars();
    std::cout << "------------------------------------------------" << std::endl;
    garage.sortCars();
    garage.printCars();
    garage.addCar ( CCar ( "NCC 1701D", "Notim Portant", 0 ) );
    std::cout << "------------------------------------------------" << std::endl;
    garage.printCars();
    garage.sortCars();
    std::cout << "------------------------------------------------" << std::endl;
    garage.printCars();
    garage.delCar("1DR HONZA");
     std::cout << "------------------------------------------------" << std::endl;
    garage.printCars();
    

    
    
    
}