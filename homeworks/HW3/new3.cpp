#ifndef __PROGTEST__
#include <cstdio>
#include <cstdlib>
#include <cassert>
#include <cstring>
#include <iostream>
#include <sstream>
#endif /* __PROGTEST__ */

// Simple shared pointer
template<typename T>
class SharedPtr {
private:
    T* m_Ptr;
    size_t* m_RefCount;

public:
    SharedPtr() : m_Ptr(nullptr), m_RefCount(nullptr) {}

    explicit SharedPtr(T* ptr) : m_Ptr(ptr), m_RefCount(new size_t(1)) {}

    SharedPtr(const SharedPtr& other) : m_Ptr(other.m_Ptr), m_RefCount(other.m_RefCount) {
        if (m_RefCount) ++(*m_RefCount);
    }

    SharedPtr& operator=(const SharedPtr& other) {
        if (this != &other) {
            release();
            m_Ptr = other.m_Ptr;
            m_RefCount = other.m_RefCount;
            if (m_RefCount) ++(*m_RefCount);
        }
        return *this;
    }

    ~SharedPtr() {
        release();
    }

    T* operator->() const { return m_Ptr; }
    T& operator*() const { return *m_Ptr; }
    T* get() const { return m_Ptr; }
    bool operator!() const { return !m_Ptr; }

    size_t use_count() const {
        return m_RefCount ? *m_RefCount : 0;
    }

private:
    void release() {
        if (m_RefCount) {
            if (--(*m_RefCount) == 0) {
                delete m_Ptr;
                delete m_RefCount;
            }
        }
        m_Ptr = nullptr;
        m_RefCount = nullptr;
    }
};

// Improved string pool with hash table for deduplication
class CStringManager {
public:
    CStringManager() : m_Capacity(256), m_Size(0) {
        m_Buckets = new Bucket*[m_Capacity];
        for (size_t i = 0; i < m_Capacity; ++i)
            m_Buckets[i] = nullptr;
    }
    
    ~CStringManager() {
        for (size_t i = 0; i < m_Capacity; ++i) {
            Bucket* current = m_Buckets[i];
            while (current) {
                Bucket* next = current->next;
                delete[] current->str;
                delete current;
                current = next;
            }
        }
        delete[] m_Buckets;
    }
    
    const char* Intern(const char* str) {
        if (!str) return nullptr;
        
        // Calculate hash
        size_t hash = 0;
        for (const char* p = str; *p; ++p)
            hash = hash * 31 + *p;
        size_t idx = hash % m_Capacity;
        
        // Look for existing string
        for (Bucket* current = m_Buckets[idx]; current; current = current->next)
            if (strcmp(current->str, str) == 0)
                return current->str;
        
        // Not found, add new string
        size_t len = strlen(str);
        char* copy = new char[len + 1];
        strcpy(copy, str);
        
        Bucket* newBucket = new Bucket;
        newBucket->str = copy;
        newBucket->next = m_Buckets[idx];
        m_Buckets[idx] = newBucket;
        
        ++m_Size;
        // Rehash if load factor exceeds 0.75
        if (m_Size > m_Capacity * 3 / 4)
            rehash();
            
        return copy;
    }
    
private:
    struct Bucket {
        char* str;
        Bucket* next;
    };
    
    void rehash() {
        size_t newCapacity = m_Capacity * 2;
        Bucket** newBuckets = new Bucket*[newCapacity];
        for (size_t i = 0; i < newCapacity; ++i)
            newBuckets[i] = nullptr;
        
        for (size_t i = 0; i < m_Capacity; ++i) {
            Bucket* current = m_Buckets[i];
            while (current) {
                Bucket* next = current->next;
                
                // Calculate new bucket index
                size_t hash = 0;
                for (const char* p = current->str; *p; ++p)
                    hash = hash * 31 + *p;
                size_t newIdx = hash % newCapacity;
                
                // Insert at beginning of bucket
                current->next = newBuckets[newIdx];
                newBuckets[newIdx] = current;
                
                current = next;
            }
        }
        
        delete[] m_Buckets;
        m_Buckets = newBuckets;
        m_Capacity = newCapacity;
    }
    
    Bucket** m_Buckets;
    size_t m_Capacity;
    size_t m_Size;
};

// === Register internal types ===
struct CDomicile {
    const char* m_Date;
    const char* m_Street;
    const char* m_City;
    CDomicile*  m_Next;

    CDomicile(const char* date, const char* street, const char* city, CDomicile* next)
    : m_Date(date), m_Street(street), m_City(city), m_Next(next) {}
};

struct CPerson {
    const char* m_ID;
    const char* m_Name;
    const char* m_Surname;
    const char* m_StartDate;
    CDomicile*  m_History;

    CPerson(const char* id, const char* name, const char* surname, const char* date, CDomicile* history)
    : m_ID(id), m_Name(name), m_Surname(surname), m_StartDate(date), m_History(history) {}
};

struct CRegisterData {
    CStringManager m_StringPool;
    CPerson**      m_Records;
    size_t         m_Capacity;
    size_t         m_Count;
  
    CRegisterData() : m_Capacity(16), m_Count(0) {
        m_Records = new CPerson*[m_Capacity];
    }
  
    ~CRegisterData() {
        for (size_t i = 0; i < m_Count; ++i) {
            CDomicile* d = m_Records[i]->m_History;
            while (d) {
                CDomicile* next = d->m_Next;
                delete d;
                d = next;
            }
            delete m_Records[i];
        }
        delete[] m_Records;
    }
  
    void EnsureCapacity() {
        if (m_Count < m_Capacity) return;
        size_t newCap = m_Capacity * 2;
        CPerson** newArr = new CPerson*[newCap];
        for (size_t i = 0; i < m_Count; ++i) newArr[i] = m_Records[i];
        delete[] m_Records;
        m_Records = newArr;
        m_Capacity = newCap;
    }
  
    int FindIndex(const char* id) const {
        int lo = 0, hi = static_cast<int>(m_Count) - 1;
        while (lo <= hi) {
            int mid = (lo + hi) / 2;
            int cmp = strcmp(m_Records[mid]->m_ID, id);
            if (cmp == 0) return mid;
            if (cmp < 0) lo = mid + 1;
            else hi = mid - 1;
        }
        return -1;
    }
  
    CPerson* Find(const char* id) const {
        int idx = FindIndex(id);
        return idx >= 0 ? m_Records[idx] : nullptr;
    }
  
    void AddPerson(CPerson* p) {
        EnsureCapacity();
        // Find insertion position
        size_t pos = 0;
        while (pos < m_Count && strcmp(m_Records[pos]->m_ID, p->m_ID) < 0)
            ++pos;
        
        // Make space
        if (pos < m_Count) {
            memmove(m_Records + pos + 1, m_Records + pos, (m_Count - pos) * sizeof(CPerson*));
        }
        
        m_Records[pos] = p;
        ++m_Count;
    }
};

class CRegister {
public:
    CRegister() : m_Data(new CRegisterData) {}

    CRegister(const CRegister& other) = default; // Using default is fine with SharedPtr

    CRegister& operator=(const CRegister& other) {
        if (this != &other) {
            m_Data = other.m_Data;
        }
        return *this;
    }

    bool add(const char* id, const char* name, const char* surname, const char* date, const char* street, const char* city) {
        // Check if person already exists
        if (m_Data->Find(id)) return false;
        
        // Only detach if we're going to modify
        detach();

        const char* iid = m_Data->m_StringPool.Intern(id);
        const char* iname = m_Data->m_StringPool.Intern(name);
        const char* isurname = m_Data->m_StringPool.Intern(surname);
        const char* idate = m_Data->m_StringPool.Intern(date);
        const char* istreet = m_Data->m_StringPool.Intern(street);
        const char* icity = m_Data->m_StringPool.Intern(city);

        if (!iid || !iname || !isurname || !idate || !istreet || !icity)
            return false;

        CDomicile* d = new CDomicile(idate, istreet, icity, nullptr);
        CPerson* p = new CPerson(iid, iname, isurname, idate, d);
        m_Data->AddPerson(p);
        return true;
    }

    bool resettle(const char* id, const char* date, const char* street, const char* city) {
        CPerson* p = m_Data->Find(id);
        if (!p) return false;
        
        // Check if date already exists
        for (CDomicile* d = p->m_History; d; d = d->m_Next)
            if (strcmp(d->m_Date, date) == 0)
                return false;
        
        // Only detach if we're going to modify
        detach();
        
        // Find person again after detach
        p = m_Data->Find(id);
        
        const char* idate = m_Data->m_StringPool.Intern(date);
        const char* istreet = m_Data->m_StringPool.Intern(street);
        const char* icity = m_Data->m_StringPool.Intern(city);
        if (!idate || !istreet || !icity) return false;

        // Insert in order
        CDomicile* newD = new CDomicile(idate, istreet, icity, nullptr);
        CDomicile** curr = &p->m_History;
        while (*curr && strcmp((*curr)->m_Date, idate) < 0)
            curr = &(*curr)->m_Next;
        newD->m_Next = *curr;
        *curr = newD;

        return true;
    }

    bool print(std::ostream& os, const char* id) const {
        CPerson* p = m_Data->Find(id);
        if (!p || !p->m_ID || !p->m_Name || !p->m_Surname) return false;

        os << p->m_ID << " " << p->m_Name << " " << p->m_Surname << "\n";
        for (CDomicile* d = p->m_History; d; d = d->m_Next) {
            if (!d->m_Date || !d->m_Street || !d->m_City) return false;
            os << d->m_Date << " " << d->m_Street << " " << d->m_City << "\n";
        }
        return true;
    }

private:
    SharedPtr<CRegisterData> m_Data;

    void detach() {
        if (!m_Data || m_Data.use_count() == 1) return;

        // Create new data with shared string pool
        SharedPtr<CRegisterData> newData(new CRegisterData());

        // Deep copy people and domiciles
        for (size_t i = 0; i < m_Data->m_Count; ++i) {
            CPerson* src = m_Data->m_Records[i];
            
            // Copy domicile history
            CDomicile* newHist = nullptr;
            CDomicile** tail = &newHist;
            
            for (CDomicile* d = src->m_History; d; d = d->m_Next) {
                const char* newDate = newData->m_StringPool.Intern(d->m_Date);
                const char* newStreet = newData->m_StringPool.Intern(d->m_Street);
                const char* newCity = newData->m_StringPool.Intern(d->m_City);
                if (!newDate || !newStreet || !newCity) continue;
                
                CDomicile* copy = new CDomicile(newDate, newStreet, newCity, nullptr);
                *tail = copy;
                tail = &copy->m_Next;
            }
            
            // Copy person
            const char* newID = newData->m_StringPool.Intern(src->m_ID);
            const char* newName = newData->m_StringPool.Intern(src->m_Name);
            const char* newSurname = newData->m_StringPool.Intern(src->m_Surname);
            const char* newStartDate = newData->m_StringPool.Intern(src->m_StartDate);
            if (!newID || !newName || !newSurname || !newStartDate) continue;
            
            CPerson* cp = new CPerson(newID, newName, newSurname, newStartDate, newHist);
            newData->AddPerson(cp);
        }
        
        m_Data = newData;
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