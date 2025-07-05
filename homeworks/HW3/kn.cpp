#ifndef __PROGTEST__
#include <cstdio>
#include <cstdlib>
#include <cassert>
#include <cstring>
#include <iostream>
#include <sstream>
#endif /* __PROGTEST__ */

// Custom shared pointer implementation
template <typename T>
class SharedPtr {
private:
    T* m_Ptr;
    unsigned int* m_RefCount;

public:
    // Default constructor
    SharedPtr() : m_Ptr(NULL), m_RefCount(NULL) {}
    
    // Constructor with pointer
    explicit SharedPtr(T* ptr) : m_Ptr(ptr), m_RefCount(NULL) {
        if (m_Ptr) {
            m_RefCount = new unsigned int(1);
        }
    }
    
    // Constructor with NULL
    SharedPtr(int null) : m_Ptr(NULL), m_RefCount(NULL) {
        // This is specifically for nullptr/NULL compatibility
        // The int parameter should be 0 (NULL)
    }
    
    // Copy constructor
    SharedPtr(const SharedPtr& other) : m_Ptr(other.m_Ptr), m_RefCount(other.m_RefCount) {
        if (m_RefCount) {
            (*m_RefCount)++;
        }
    }
    
    // Destructor
    ~SharedPtr() {
        if (m_RefCount) {
            (*m_RefCount)--;
            if (*m_RefCount == 0) {
                delete m_Ptr;
                delete m_RefCount;
            }
        }
    }
    
    // Assignment operator
    SharedPtr& operator=(const SharedPtr& other) {
        if (this != &other) {
            // Clean up current resources
            if (m_RefCount) {
                (*m_RefCount)--;
                if (*m_RefCount == 0) {
                    delete m_Ptr;
                    delete m_RefCount;
                }
            }
            
            // Assign new resources
            m_Ptr = other.m_Ptr;
            m_RefCount = other.m_RefCount;
            
            // Increment reference count
            if (m_RefCount) {
                (*m_RefCount)++;
            }
        }
        return *this;
    }
    
    // Assignment operator for NULL
    SharedPtr& operator=(int null) {

        // Clean up current resources
        if (m_RefCount) {
            (*m_RefCount)--;
            if (*m_RefCount == 0) {
                delete m_Ptr;
                delete m_RefCount;
            }
        }
        
        m_Ptr = NULL;
        m_RefCount = NULL;
        
        return *this;
    }
    
    // Dereference operator
    T& operator*() const {
        return *m_Ptr;
    }
    
    // Arrow operator
    T* operator->() const {
        return m_Ptr;
    }
    
    // Get raw pointer
    T* get() const {
        return m_Ptr;
    }
    
    // Boolean conversion (for null check)
    operator bool() const {
        return m_Ptr != NULL;
    }
    
    // NULL comparison
    bool operator==(int null) const {
        return null == 0 && m_Ptr == NULL;
    }
    
    bool operator!=(int null) const {
        return null != 0 || m_Ptr != NULL;
    }
};

// Specialized version for arrays
template <typename T>
class SharedPtr<T[]> {
private:
    T* m_Ptr;
    unsigned int* m_RefCount;

public:
    // Default constructor
    SharedPtr() : m_Ptr(NULL), m_RefCount(NULL) {}
    
    // Constructor with pointer
    explicit SharedPtr(T* ptr) : m_Ptr(ptr), m_RefCount(NULL) {
        if (m_Ptr) {
            m_RefCount = new unsigned int(1);
        }
    }
    
    // Constructor with NULL
    SharedPtr(int null) : m_Ptr(NULL), m_RefCount(NULL) {
        // This is specifically for nullptr/NULL compatibility
        // The int parameter should be 0 (NULL)
    }
    
    // Copy constructor
    SharedPtr(const SharedPtr& other) : m_Ptr(other.m_Ptr), m_RefCount(other.m_RefCount) {
        if (m_RefCount) {
            (*m_RefCount)++;
        }
    }
    
    // Destructor
    ~SharedPtr() {
        if (m_RefCount) {
            (*m_RefCount)--;
            if (*m_RefCount == 0) {
                delete[] m_Ptr;
                delete m_RefCount;
            }
        }
    }
    
    // Assignment operator
    SharedPtr& operator=(const SharedPtr& other) {
        if (this != &other) {
            // Clean up current resources
            if (m_RefCount) {
                (*m_RefCount)--;
                if (*m_RefCount == 0) {
                    delete[] m_Ptr;
                    delete m_RefCount;
                }
            }
            
            // Assign new resources
            m_Ptr = other.m_Ptr;
            m_RefCount = other.m_RefCount;
            
            // Increment reference count
            if (m_RefCount) {
                (*m_RefCount)++;
            }
        }
        return *this;
    }
    
    // Assignment operator for NULL
    SharedPtr& operator=(int null) {
        
        // Clean up current resources
        if (m_RefCount) {
            (*m_RefCount)--;
            if (*m_RefCount == 0) {
                delete[] m_Ptr;
                delete m_RefCount;
            }
        }
        
        m_Ptr = NULL;
        m_RefCount = NULL;
        
        return *this;
    }
    
    // Array access operator
    T& operator[](size_t index) const {
        return m_Ptr[index];
    }
    
    // Get raw pointer
    T* get() const {
        return m_Ptr;
    }
    
    // Boolean conversion (for null check)
    operator bool() const {
        return m_Ptr != NULL;
    }
    
    // NULL comparison
    bool operator==(int null) const {
        return null == 0 && m_Ptr == NULL;
    }
    
    bool operator!=(int null) const {
        return null != 0 || m_Ptr != NULL;
    }
};

// Helper function similar to std::make_shared
template <typename T, typename... Args>
SharedPtr<T> make_shared(Args&&... args) {
    return SharedPtr<T>(new T(args...));
}

// String deduplication system for memory efficiency
class CStringManager {
public:
    static SharedPtr<char[]> addString(const char* str) {
        if (!str) return 0; // Return NULL instead of nullptr
        
        // Check if we already have this string
        StringNode* current = m_Strings;
        while (current) {
            if (strcmp(current->str.get(), str) == 0) {
                return current->str; // Return existing string
            }
            current = current->next;
        }
        
        // Create new string if not found
        size_t len = strlen(str) + 1; // +1 for null terminator
        SharedPtr<char[]> newStr(new char[len]);
        strcpy(newStr.get(), str);
        
        // Add to our list
        StringNode* newNode = new StringNode;
        newNode->str = newStr;
        newNode->next = m_Strings;
        m_Strings = newNode;
        
        return newStr;
    }
    
    static void cleanup() {
        StringNode* current = m_Strings;
        while (current) {
            StringNode* next = current->next;
            delete current;
            current = next;
        }
        m_Strings = NULL; // Use NULL instead of nullptr
    }
    
private:
    struct StringNode {
        SharedPtr<char[]> str;
        StringNode* next;
    };
    
    static StringNode* m_Strings;
};

CStringManager::StringNode* CStringManager::m_Strings = NULL; // Use NULL instead of nullptr

class CRegister {
public:
    // Default constructor
    CRegister() : m_Head(0) {} // Use 0 for NULL
    
    // Copy constructor
    CRegister(const CRegister& src) {
        if (!src.m_Head) {
            m_Head = 0; // Use 0 for NULL
            return;
        }
        
        // Deep copy implementation
        copyFrom(src);
    }
    
    // Destructor
    ~CRegister() {
        // Shared pointers will handle cleanup
    }
    
    // Assignment operator
    CRegister& operator=(const CRegister& src) {
        if (this == &src) return *this; // Self-assignment check
        
        // Clear existing data
        m_Head = 0; // Use 0 for NULL
        
        // Copy from source
        if (src.m_Head) {
            copyFrom(src);
        }
        
        return *this;
    }
    
    bool add(const char id[],
             const char name[],
             const char surname[],
             const char date[],
             const char street[],
             const char city[]) {
        
        if (!id || !name || !surname || !date || !street || !city) {
            return false;
        }
        
        // Check if person already exists
        if (findPerson(id)) {
            return false;
        }
        
        // Create new person
        SharedPtr<CPerson> newPerson = make_shared<CPerson>();
        
        // Use string manager to deduplicate strings
        newPerson->m_Id = CStringManager::addString(id);
        newPerson->m_Name = CStringManager::addString(name);
        newPerson->m_Surname = CStringManager::addString(surname);
        newPerson->m_StartDate = CStringManager::addString(date);
        
        // Create first domicile record
        SharedPtr<CDomicile> newDomicile = make_shared<CDomicile>();
        newDomicile->m_Street = CStringManager::addString(street);
        newDomicile->m_City = CStringManager::addString(city);
        newDomicile->m_Date = CStringManager::addString(date);
        newDomicile->m_Next = 0; // Use 0 for NULL
        
        newPerson->m_DomicileHistory = newDomicile;
        
        // Add to the beginning of the list for O(1) insertion
        newPerson->m_Next = m_Head;
        m_Head = newPerson;
        
        return true;
    }
    
    bool resettle(const char id[],
                  const char date[],
                  const char street[],
                  const char city[]) {
        
        if (!id || !date || !street || !city) {
            return false;
        }
        
        // Find the person
        SharedPtr<CPerson> person = findPerson(id);
        if (!person) {
            return false;
        }
        
        // Check if there's already a domicile change on that date
        SharedPtr<CDomicile> current = person->m_DomicileHistory;
        while (current) {
            if (strcmp(current->m_Date.get(), date) == 0) {
                return false; // Already have a domicile change on this date
            }
            current = current->m_Next;
        }
        
        // Create new domicile record
        SharedPtr<CDomicile> newDomicile = make_shared<CDomicile>();
        newDomicile->m_Street = CStringManager::addString(street);
        newDomicile->m_City = CStringManager::addString(city);
        newDomicile->m_Date = CStringManager::addString(date);
        
        // Insert into sorted list (by date)
        // This ensures the print method can display dates in ascending order
        
        if (!person->m_DomicileHistory || strcmp(date, person->m_DomicileHistory->m_Date.get()) < 0) {
            // Insert at beginning
            newDomicile->m_Next = person->m_DomicileHistory;
            person->m_DomicileHistory = newDomicile;
        } else {
            // Find insertion point
            current = person->m_DomicileHistory;
            while (current->m_Next && strcmp(date, current->m_Next->m_Date.get()) > 0) {
                current = current->m_Next;
            }
            
            // Insert after current
            newDomicile->m_Next = current->m_Next;
            current->m_Next = newDomicile;
        }
        
        return true;
    }
    
    bool print(std::ostream& os, const char id[]) const {
        if (!id) return false;
        
        // Find the person
        SharedPtr<CPerson> person = findPerson(id);
        if (!person) {
            return false;
        }
        
        // Print the person's info
        os << person->m_Id.get() << " " << person->m_Name.get() << " " << person->m_Surname.get() << std::endl;
        
        // Print the domicile history (already sorted by date)
        SharedPtr<CDomicile> current = person->m_DomicileHistory;
        while (current) {
            os << current->m_Date.get() << " " << current->m_Street.get() << " " << current->m_City.get() << std::endl;
            current = current->m_Next;
        }
        
        return true;
    }
    
private:
    struct CDomicile {
        SharedPtr<char[]> m_Street;
        SharedPtr<char[]> m_City;
        SharedPtr<char[]> m_Date;
        SharedPtr<CDomicile> m_Next;
    };
    
    struct CPerson {
        SharedPtr<char[]> m_Id;
        SharedPtr<char[]> m_Name;
        SharedPtr<char[]> m_Surname;
        SharedPtr<char[]> m_StartDate;
        SharedPtr<CDomicile> m_DomicileHistory;
        SharedPtr<CPerson> m_Next;
    };
    
    SharedPtr<CPerson> m_Head;
    
    // Helper method to find a person by ID
    SharedPtr<CPerson> findPerson(const char id[]) const {
        SharedPtr<CPerson> current = m_Head;
        while (current) {
            if (strcmp(current->m_Id.get(), id) == 0) {
                return current;
            }
            current = current->m_Next;
        }
        return 0; // Use 0 for NULL
    }
    
    // Helper method for deep copying
    void copyFrom(const CRegister& src) {
      if (!src.m_Head) return;
      
      // Copy the first person
      SharedPtr<CPerson> srcCurrent = src.m_Head;
      m_Head = make_shared<CPerson>();
      
      // Copy basic person info
      m_Head->m_Id = srcCurrent->m_Id;
      m_Head->m_Name = srcCurrent->m_Name;
      m_Head->m_Surname = srcCurrent->m_Surname;
      m_Head->m_StartDate = srcCurrent->m_StartDate;
      
      // Copy domicile history
      if (srcCurrent->m_DomicileHistory) {
          SharedPtr<CDomicile> srcDomicile = srcCurrent->m_DomicileHistory;
          m_Head->m_DomicileHistory = make_shared<CDomicile>();
          
          SharedPtr<CDomicile> destDomicile = m_Head->m_DomicileHistory;
          destDomicile->m_Street = srcDomicile->m_Street;
          destDomicile->m_City = srcDomicile->m_City;
          destDomicile->m_Date = srcDomicile->m_Date;
          
          srcDomicile = srcDomicile->m_Next;
          
          // Copy rest of domiciles
          while (srcDomicile) {
              destDomicile->m_Next = make_shared<CDomicile>();
              destDomicile = destDomicile->m_Next;
              
              destDomicile->m_Street = srcDomicile->m_Street;
              destDomicile->m_City = srcDomicile->m_City;
              destDomicile->m_Date = srcDomicile->m_Date;
              
              srcDomicile = srcDomicile->m_Next;
          }
      }
      
      // Copy rest of persons
      SharedPtr<CPerson> destCurrent = m_Head;
      srcCurrent = srcCurrent->m_Next;
      
      while (srcCurrent) {
          destCurrent->m_Next = make_shared<CPerson>();
          destCurrent = destCurrent->m_Next;
          
          // Copy basic person info
          destCurrent->m_Id = srcCurrent->m_Id;
          destCurrent->m_Name = srcCurrent->m_Name;
          destCurrent->m_Surname = srcCurrent->m_Surname;
          destCurrent->m_StartDate = srcCurrent->m_StartDate;
          
          // Copy domicile history
          if (srcCurrent->m_DomicileHistory) {
              SharedPtr<CDomicile> srcDomicile = srcCurrent->m_DomicileHistory;
              destCurrent->m_DomicileHistory = make_shared<CDomicile>();
              
              SharedPtr<CDomicile> destDomicile = destCurrent->m_DomicileHistory;
              destDomicile->m_Street = srcDomicile->m_Street;
              destDomicile->m_City = srcDomicile->m_City;
              destDomicile->m_Date = srcDomicile->m_Date;
              
              srcDomicile = srcDomicile->m_Next;
              
              // Copy rest of domiciles
              while (srcDomicile) {
                  destDomicile->m_Next = make_shared<CDomicile>();
                  destDomicile = destDomicile->m_Next;
                  
                  destDomicile->m_Street = srcDomicile->m_Street;
                  destDomicile->m_City = srcDomicile->m_City;
                  destDomicile->m_Date = srcDomicile->m_Date;
                  
                  srcDomicile = srcDomicile->m_Next;
              }
          }
          
          srcCurrent = srcCurrent->m_Next;
      }
  }
};

#ifndef __PROGTEST__
int main() {
  char   lID[12], lDate[12], lName[50], lSurname[50], lStreet[50], lCity[50];
  std::ostringstream oss;
  CRegister  a;
  assert ( a . add ( "123456/7890", "John", "Smith", "2000-01-01", "Main street", "Seattle" ) == true );
  assert ( a . add ( "987654/3210", "Freddy", "Kruger", "2001-02-03", "Elm street", "Sacramento" ) == true );
  assert ( a . resettle ( "123456/7890", "2003-05-12", "Elm street", "Atlanta" ) == true );
  assert ( a . resettle ( "123456/7890", "2002-12-05", "Sunset boulevard", "Los Angeles" ) == true );
  oss . str ( "" );
  assert ( a . print ( oss, "123456/7890" ) == true );
  assert ( ! strcmp ( oss . str () . c_str (), R"###(123456/7890 John Smith
2000-01-01 Main street Seattle
2002-12-05 Sunset boulevard Los Angeles
2003-05-12 Elm street Atlanta
)###" ) );
  oss . str ( "" );
  assert ( a . print ( oss, "987654/3210" ) == true );
  assert ( ! strcmp ( oss . str () . c_str (), R"###(987654/3210 Freddy Kruger
2001-02-03 Elm street Sacramento
)###" ) );
  CRegister b ( a );
  assert ( b . resettle ( "987654/3210", "2008-04-12", "Elm street", "Cinccinati" ) == true );
  assert ( a . resettle ( "987654/3210", "2007-02-11", "Elm street", "Indianapolis" ) == true );
  oss . str ( "" );
  assert ( a . print ( oss, "987654/3210" ) == true );
  assert ( ! strcmp ( oss . str () . c_str (), R"###(987654/3210 Freddy Kruger
2001-02-03 Elm street Sacramento
2007-02-11 Elm street Indianapolis
)###" ) );
  oss . str ( "" );
  assert ( b . print ( oss, "987654/3210" ) == true );
  assert ( ! strcmp ( oss . str () . c_str (), R"###(987654/3210 Freddy Kruger
2001-02-03 Elm street Sacramento
2008-04-12 Elm street Cinccinati
)###" ) );
  a = b;
  assert ( a . resettle ( "987654/3210", "2011-05-05", "Elm street", "Salt Lake City" ) == true );
  oss . str ( "" );
  assert ( a . print ( oss, "987654/3210" ) == true );
  assert ( ! strcmp ( oss . str () . c_str (), R"###(987654/3210 Freddy Kruger
2001-02-03 Elm street Sacramento
2008-04-12 Elm street Cinccinati
2011-05-05 Elm street Salt Lake City
)###" ) );
  oss . str ( "" );
  assert ( b . print ( oss, "987654/3210" ) == true );
  assert ( ! strcmp ( oss . str () . c_str (), R"###(987654/3210 Freddy Kruger
2001-02-03 Elm street Sacramento
2008-04-12 Elm street Cinccinati
)###" ) );
  assert ( b . add ( "987654/3210", "Joe", "Lee", "2010-03-17", "Abbey road", "London" ) == false );
  assert ( a . resettle ( "987654/3210", "2001-02-03", "Second street", "Milwaukee" ) == false );
  oss . str ( "" );
  assert ( a . print ( oss, "666666/6666" ) == false );

  CRegister  c;
  strncpy ( lID, "123456/7890", sizeof ( lID ) );
  strncpy ( lName, "John", sizeof ( lName ) );
  strncpy ( lSurname, "Smith", sizeof ( lSurname ) );
  strncpy ( lDate, "2000-01-01", sizeof ( lDate) );
  strncpy ( lStreet, "Main street", sizeof ( lStreet ) );
  strncpy ( lCity, "Seattle", sizeof ( lCity ) );
  assert (  c . add ( lID, lName, lSurname, lDate, lStreet, lCity ) == true );
  strncpy ( lID, "987654/3210", sizeof ( lID ) );
  strncpy ( lName, "Freddy", sizeof ( lName ) );
  strncpy ( lSurname, "Kruger", sizeof ( lSurname ) );
  strncpy ( lDate, "2001-02-03", sizeof ( lDate) );
  strncpy ( lStreet, "Elm street", sizeof ( lStreet ) );
  strncpy ( lCity, "Sacramento", sizeof ( lCity ) );
  assert (  c . add ( lID, lName, lSurname, lDate, lStreet, lCity ) == true );
  strncpy ( lID, "123456/7890", sizeof ( lID ) );
  strncpy ( lDate, "2003-05-12", sizeof ( lDate) );
  strncpy ( lStreet, "Elm street", sizeof ( lStreet ) );
  strncpy ( lCity, "Atlanta", sizeof ( lCity ) );
  assert ( c . resettle ( lID, lDate, lStreet, lCity ) == true );
  strncpy ( lID, "123456/7890", sizeof ( lID ) );
  strncpy ( lDate, "2002-12-05", sizeof ( lDate) );
  strncpy ( lStreet, "Sunset boulevard", sizeof ( lStreet ) );
  strncpy ( lCity, "Los Angeles", sizeof ( lCity ) );
  assert ( c . resettle ( lID, lDate, lStreet, lCity ) == true );
  oss . str ( "" );
  assert ( c . print ( oss, "123456/7890" ) == true );
  assert ( ! strcmp ( oss . str () . c_str (), R"###(123456/7890 John Smith
2000-01-01 Main street Seattle
2002-12-05 Sunset boulevard Los Angeles
2003-05-12 Elm street Atlanta
)###" ) );

  return EXIT_SUCCESS;
}
#endif /* __PROGTEST__ */