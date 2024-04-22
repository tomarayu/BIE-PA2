#ifndef __PROGTEST__
#include <cstdlib>
#include <cstdio>
#include <cstring>
#include <cctype>
#include <climits>
#include <cassert>
#include <iostream>
#include <iomanip>
#include <string>
#include <array>
#include <vector>
#include <list>
#include <set>
#include <map>
#include <unordered_set>
#include <unordered_map>
#include <memory>
#include <algorithm>
#include <functional>
#include <iterator>
#include <compare>

class CDate
{
public:
    CDate(int y,
          int m,
          int d)
        : m_Y(y),
          m_M(m),
          m_D(d)
    {
    }

    std::strong_ordering operator<=>(const CDate &other) const = default;

    friend std::ostream &operator<<(std::ostream &os,
                                    const CDate &d)
    {
        return os << d.m_Y << '-' << d.m_M << '-' << d.m_D;
    }

private:
    int m_Y;
    int m_M;
    int m_D;
};
enum class ESortKey
{
    NAME,
    BIRTH_DATE,
    ENROLL_YEAR
};
#endif /* __PROGTEST__ */

using namespace std;

std::vector<std::string> splitIntoWords(const std::string &str)
{
    std::istringstream iss(str);
    std::vector<std::string> words((std::istream_iterator<std::string>(iss)),
                                   std::istream_iterator<std::string>());

    for (auto word : words)
    {
        // //std::cout << word << std::endl;
    }
    return words;
}

bool caseInsensitiveCompare(const std::string &string1, const std::string &string2)
{

    // Convert to lowercase
    std::string str1 = string1;
    std::string str2 = string2;
    std::transform(str1.begin(), str1.end(), str1.begin(), ::tolower);
    std::transform(str2.begin(), str2.end(), str2.begin(), ::tolower);
    return str1 == str2;

    // // Sort
    // std::sort(str1.begin(), str1.end());
    // std::sort(str2.begin(), str2.end());

    // if (!std::includes(str1.begin(), str1.end(), str2.begin(), str2.end()))
    //   return false;
    // return true;
}

class CStudent
{
public:
    CStudent(const std::string &name,
             const CDate &born,
             int enrolled) : m_name(name), m_born(born), m_enrolled(enrolled), id(globalId++) {}

    bool operator==(const CStudent &other) const;
    bool operator!=(const CStudent &other) const { return !(*this == other); };
    bool operator<(const CStudent &other) const
    {
        // Compare the students based on some unique attribute, like ID
        return this->id < other.id;
    }

    // getters
    std::string getName() const { return m_name; }
    CDate getBorn() const { return m_born; };
    int getEnrolled() const { return m_enrolled; };
    int getId() const { return id; }

private:
    // todo
    std::string m_name;
    CDate m_born;
    int m_enrolled;
    int id;
    static int globalId;
};
int CStudent::globalId = 0;

class CFilter
{
public:
    CFilter()
        : m_bornBefore(0, 0, 0), m_bornAfter(0, 0, 0)
    {
    }

    // getters
    CFilter &name(const std::string &name)
    {
        m_names.push_back(name);
        m_empty_name = false;
        return *this;
    }

    CFilter &bornBefore(const CDate &date)
    {
        m_bornBefore = date;
        m_empty_born_before = false;
        return *this;
    }

    CFilter &bornAfter(const CDate &date)
    {
        m_bornAfter = date;
        m_empty_born_after = false;
        return *this;
    }

    CFilter &enrolledBefore(int year)
    {
        m_enrolledBefore = year;
        m_empty_enrolled_before = false;
        return *this;
    }

    CFilter &enrolledAfter(int year)
    {
        m_enrolledAfter = year;
        m_empty_enrolled_after = false;
        return *this;
    }

    bool isEmpty() const { return m_empty_born_after && m_empty_born_before && m_empty_enrolled_after && m_empty_enrolled_before && m_empty_name; }
    const std::vector<std::string> &getNames() const { return m_names; }
    const CDate &getBornBefore() const { return m_bornBefore; }
    const CDate &getBornAfter() const { return m_bornAfter; }
    int getEnrolledBefore() const { return m_enrolledBefore; }
    int getEnrolledAfter() const { return m_enrolledAfter; }

    // check which filters are active
    bool isNameFilterActive() const { return !m_empty_name; }
    bool isBornAfterFilterActive() const { return !m_empty_born_after; }
    bool isBornBeforeFilterActive() const { return !m_empty_born_before; }
    bool isEnrolledBeforeFilterActive() const { return !m_empty_enrolled_before; }
    bool isEnrolledAfterFilterActive() const { return !m_empty_enrolled_after; }

private:
    // todo

    std::string toLower(const std::string &str) const
    {
        std::string lowerStr = str;
        std::transform(lowerStr.begin(), lowerStr.end(), lowerStr.begin(), ::tolower);
        return lowerStr;
    }
    // bool m_empty = true;
    bool m_empty_name = true;
    bool m_empty_born_before = true;
    bool m_empty_born_after = true;
    bool m_empty_enrolled_before = true;
    bool m_empty_enrolled_after = true;
    std::vector<std::string> m_names;
    CDate m_bornBefore;
    CDate m_bornAfter;
    int m_enrolledBefore;
    int m_enrolledAfter;
};

class CSort
{
public:
    CSort()
    {
        m_empty = 1;
    }
    CSort &addKey(ESortKey key,
                  bool ascending)
    {
        m_keys.push_back(key);
        m_ascending.push_back(ascending);
        m_empty = 0;
        return *this;
    }

    // getters
    const std::vector<ESortKey> &getKeys() const
    {
        return m_keys;
    }
    bool getOrder(ESortKey key) const
    {
        for (size_t i = 0; i < m_keys.size(); ++i)
        {
            if (m_keys[i] == key)
            {
                return m_ascending[i];
            }
        }
        return false;
    }
    int isEmpty() const { return m_empty; }

private:
    // todo
    int m_empty = 0;
    std::vector<ESortKey> m_keys;
    std::vector<bool> m_ascending;
};

class CStudyDept
{
public:
    // CStudyDept()default;
    bool addStudent(const CStudent &x);
    bool delStudent(const CStudent &x);
    std::list<CStudent> search(const CFilter &flt,
                               const CSort &sortOpt) const;

    std::set<std::string> suggest(const std::string &name) const;
    bool operator==(const CStudyDept &other) const;
    bool findStudent(const CStudent &x) const;
    struct CompareStudents
    {
        bool operator()(const std::shared_ptr<CStudent> &a, const std::shared_ptr<CStudent> &b) const
        {
            // Implement your comparison logic here.
            // For example, to order students by name:
            return a->getName() < b->getName();
        }
    };

private:
    struct DateHash
    {
        size_t operator()(const CDate &date) const
        {
            std::ostringstream oss;
            oss << date;
            return std::hash<std::string>()(oss.str());
        }
    };
    struct StudentHash
    {
        size_t operator()(const std::shared_ptr<CStudent> &student) const
        {
            return ((std::hash<std::string>()(student->getName()) ^ (DateHash()(student->getBorn()) << 1)) >> 1) ^ (std::hash<int>()(student->getEnrolled()) << 1);
        }
    };
    // todo
    struct CompareByName
    {
        bool operator()(const std::shared_ptr<CStudent> &a, const std::shared_ptr<CStudent> &b) const
        {
            if (a->getName() != b->getName())
                return a->getName() < b->getName();
            else if (a->getBorn() != b->getBorn())
                return a->getBorn() < b->getBorn();
            else
                return a->getEnrolled() < b->getEnrolled();
            return a->getName() < b->getName();
        }
    }; // Add a semicolon here
    struct CompareByDate
    {
        bool operator()(const std::shared_ptr<CStudent> &a, const std::shared_ptr<CStudent> &b) const
        {
            return a->getBorn() < b->getBorn();
        }
    }; // Add a semicolon here
    struct CompareByYear
    {
        bool operator()(const std::shared_ptr<CStudent> &a, const std::shared_ptr<CStudent> &b) const
        {
            return a->getEnrolled() < b->getEnrolled();
        }
    }; // Add a semicolon here
    // std::map<std::string, std::set<std::shared_ptr<CStudent>, CompareByName>> studentsByName;
    // std::map<CDate, std::set<std::shared_ptr<CStudent>, CompareByDate>> studentsByDate;
    // std::map<int, std::set<std::shared_ptr<CStudent>, CompareByYear>> studentsByYear;
    std::vector<std::shared_ptr<CStudent>> studentSet;
    // Initialize the maps
    map<CDate, unordered_set<shared_ptr<CStudent>, StudentHash>> date;
    map<int, unordered_set<shared_ptr<CStudent>, StudentHash>> EnrollYear;
    map<string, unordered_set<shared_ptr<CStudent>, StudentHash>> names;
};

bool CStudyDept::addStudent(const CStudent &x)
{
    std::istringstream iss(x.getName());
    std::vector<std::string> names((std::istream_iterator<std::string>(iss)),
                                   std::istream_iterator<std::string>());
    if (findStudent(x))
        return false;
    // Create a shared_ptr from x
    std::shared_ptr<CStudent> studentPtr = std::make_shared<CStudent>(x);

    studentSet.push_back(studentPtr);
    for (auto &name : names)
    {
        std::transform(name.begin(), name.end(), name.begin(),
                       [](unsigned char c)
                       { return std::tolower(c); });
        this->names[name].insert(studentPtr);
        // studentsByName[name].insert(studentPtr);
    }
    //  studentsByDate[x.getBorn()].insert(studentPtr);
    // studentsByYear[x.getEnrolled()].insert(studentPtr);
    date[x.getBorn()].insert(studentPtr);
    EnrollYear[x.getEnrolled()].insert(studentPtr);

    return true;
}

bool CStudyDept::delStudent(const CStudent &x)
{
    // std::istringstream iss(x.getName());
    // std::vector<std::string> names((std::istream_iterator<std::string>(iss)),
    //                                std::istream_iterator<std::string>());
    if (!findStudent(x))
        return false;
    // printf("student here\n");
    auto it = std::find_if(studentSet.begin(), studentSet.end(), [&x](const std::shared_ptr<CStudent> &student)
                           { return *student == x; });

    date[(*it)->getBorn()].erase(*it);
    EnrollYear[(*it)->getEnrolled()].erase(*it);
    for (std::string &n : splitIntoWords((*it)->getName()))
    {
        std::transform(n.begin(), n.end(), n.begin(),
                       [](unsigned char c)
                       { return std::tolower(c); });
        names[n].erase(*it);
    }

    studentSet.erase(it);

    return true;
}

bool CStudyDept::findStudent(const CStudent &other) const
{
    for (auto student : studentSet)
    {
        if (student->getName() == other.getName() && student->getBorn() == other.getBorn() && student->getEnrolled() == other.getEnrolled())
        {
            // printf("student found\n");
            return true;
        }
    }
    // printf("student not found\n");
    return false;
}

std::list<CStudent> CStudyDept::search(const CFilter &flt,
                                       const CSort &sortOpt) const
{
    std::list<CStudent> result;
    std::set<CStudent> uniqueStudents;
    if (flt.isEmpty())
    {
        for (const auto &student : studentSet)
        {
            result.push_back(*student);
        }
    }
    else
    {
        if (flt.isNameFilterActive())
        {
            for (const auto &name : flt.getNames())
            {
                std::vector<std::string> filterWords = splitIntoWords(name);
                std::sort(filterWords.begin(), filterWords.end());
                for (auto &word : filterWords)
                {
                    std::transform(word.begin(), word.end(), word.begin(), ::tolower);
                }
                for (const auto &name : filterWords)
                {

                    auto it = names.find(name);
                    if (it != names.end())
                    {
                        for (const auto &student : it->second)
                        {
                            auto studentName = student->getName();
                            // std::cout<< "student name is "<< studentName << std::endl;
                            std::vector<std::string> studentWords = splitIntoWords(studentName);
                            std::sort(studentWords.begin(), studentWords.end());
                            for (auto &word : studentWords)
                            {
                                std::transform(word.begin(), word.end(), word.begin(), ::tolower);
                            }
                            if (std::includes(studentWords.begin(), studentWords.end(), filterWords.begin(), filterWords.end()) &&
                                studentWords.size() == filterWords.size())
                            {
                                if (uniqueStudents.find(*student) == uniqueStudents.end())
                                {
                                    //   std::cout << "pushing student " << student.getName() << student.getBorn() << std::endl;
                                    result.push_back(*student);
                                    uniqueStudents.insert(*student);
                                }
                            }
                        }
                    }
                }
            }
        }
        // std::cout << "unique students size is " << uniqueStudents.size() << std::endl;
        // std::cout << "student set size is " << result.size() << std::endl;

        // Filter by birth dates
        bool afterchange = false;
        if (flt.isBornBeforeFilterActive() || flt.isBornAfterFilterActive())
        {
            if (flt.isBornAfterFilterActive() && flt.isBornBeforeFilterActive() && flt.getBornBefore() <= flt.getBornAfter())
            {
                return std::list<CStudent>();
            }
            std::set<CStudent> newUniqueStudents;
            auto lower = flt.isBornAfterFilterActive() ? date.lower_bound(flt.getBornAfter()) : date.begin();
            auto upper = flt.isBornBeforeFilterActive() ? date.upper_bound(flt.getBornBefore()) : date.end();

            for (auto it = lower; it != upper; ++it)
            {
                for (const auto &student : it->second)
                {
                    if (uniqueStudents.find(*student) != uniqueStudents.end())
                    {
                        afterchange = true;
                        newUniqueStudents.insert(*student);
                    }
                }
            }
            uniqueStudents = std::move(newUniqueStudents);
        }
        // Convert uniqueStudents to result
        if (afterchange)
        {
            result.clear();
            for (const auto &student : uniqueStudents)
            {
                result.push_back(student);
            }
        }

        // Filter by enrollment years
        if (flt.isEnrolledBeforeFilterActive() || flt.isEnrolledAfterFilterActive())
        {
            ///  std::set<CStudent> newUniqueStudents;
            if (flt.isEnrolledAfterFilterActive() && flt.isEnrolledBeforeFilterActive() && flt.getEnrolledBefore() <= flt.getEnrolledAfter())
            {
                return std::list<CStudent>();
            }
            std::set<CStudent> newUniqueStudents;
            for (const auto &entry : EnrollYear)
            {
                bool enrolledBeforePass = !flt.isEnrolledBeforeFilterActive() || entry.first <= flt.getEnrolledBefore();
                bool enrolledAfterPass = !flt.isEnrolledAfterFilterActive() || entry.first >= flt.getEnrolledAfter();
                if (enrolledBeforePass && enrolledAfterPass)
                {
                    for (const auto &student : entry.second)
                    {
                        if (uniqueStudents.find(*student) != uniqueStudents.end())
                        {
                            afterchange = true;
                            newUniqueStudents.insert(*student);
                        }
                    }
                }
            }
            uniqueStudents = std::move(newUniqueStudents);
        }

        // Convert uniqueStudents to result
        if (afterchange)
        {
            result.clear();
            for (const auto &student : uniqueStudents)
            {
                result.push_back(student);
            }
        }
    }
    // Sort the result
    // Sort the result
    if (!sortOpt.isEmpty())
    {
        result.sort([&sortOpt](const CStudent &a, const CStudent &b)
                    {
                        for (const auto &key : sortOpt.getKeys())
                        {
                            bool ascending = sortOpt.getOrder(key);
                            switch (key)
                            {
                            case ESortKey::NAME:
                                if (a.getName() != b.getName())
                                    return ascending ? a.getName() < b.getName() : a.getName() > b.getName();
                                break;
                            case ESortKey::BIRTH_DATE:
                                if (a.getBorn() != b.getBorn())
                                    return ascending ? a.getBorn() < b.getBorn() : a.getBorn() > b.getBorn();
                                break;
                            case ESortKey::ENROLL_YEAR:
                                if (a.getEnrolled() != b.getEnrolled())
                                    return ascending ? a.getEnrolled() < b.getEnrolled() : a.getEnrolled() > b.getEnrolled();
                                break;
                            }
                        }
                        return false; // Return false if all keys are equal
                    });
    }
    if (sortOpt.isEmpty())
    {
        // std::cout<<"sorting by id\n";
        result.sort([](const CStudent &a, const CStudent &b)
                    { return a.getId() < b.getId(); });
    }

    return result;
}

std::set<std::string> CStudyDept::suggest(const std::string &name) const
{
    std::set<std::string> result;
    std::istringstream iss(name);
    // std::vector<std::string> nameWords((std::istream_iterator<std::string>(iss)),
    //                                    std::istream_iterator<std::string>());
    std::set<std::string> nameWords;
    std::string word;
    // int wordCount = 0;
    while (iss >> word)
    {
        std::transform(word.begin(), word.end(), word.begin(), ::tolower);
        nameWords.insert(word);
        // std::cout<< "word is "<< word << std::endl;
    }
    // std::sort(nameWords.begin(), nameWords.end());
    for (const auto &word : nameWords)
    {
        auto it = names.find(word);
        if (it != names.end())
        {
            for (const auto &student : it->second)
            {
                std::string studentName = student->getName();
                std::transform(studentName.begin(), studentName.end(), studentName.begin(), ::tolower);
                std::istringstream issStudentName(studentName);
                std::set<std::string> studentNameWords((std::istream_iterator<std::string>(issStudentName)),
                                                       std::istream_iterator<std::string>());
                //  std::sort(studentNameWords.begin(), studentNameWords.end());
                bool allWordsMatch = std::all_of(nameWords.begin(), nameWords.end(), [&](const std::string &word)
                                                 { return std::find(studentNameWords.begin(), studentNameWords.end(), word) != studentNameWords.end(); });
                if (allWordsMatch)
                    result.insert(student->getName());
            }
        }
    }
    return result;
}

bool CStudent::operator==(const CStudent &other) const
{
    return m_name == other.m_name && m_born == other.m_born && m_enrolled == other.m_enrolled;
}

#ifndef __PROGTEST__
int main(void)
{
    CStudyDept x0;
    assert(CStudent("James Bond", CDate(1980, 4, 11), 2010) == CStudent("James Bond", CDate(1980, 4, 11), 2010));
    assert(!(CStudent("James Bond", CDate(1980, 4, 11), 2010) != CStudent("James Bond", CDate(1980, 4, 11), 2010)));
    assert(CStudent("James Bond", CDate(1980, 4, 11), 2010) != CStudent("Peter Peterson", CDate(1980, 4, 11), 2010));
    assert(!(CStudent("James Bond", CDate(1980, 4, 11), 2010) == CStudent("Peter Peterson", CDate(1980, 4, 11), 2010)));
    assert(CStudent("James Bond", CDate(1980, 4, 11), 2010) != CStudent("James Bond", CDate(1997, 6, 17), 2010));
    assert(!(CStudent("James Bond", CDate(1980, 4, 11), 2010) == CStudent("James Bond", CDate(1997, 6, 17), 2010)));
    assert(CStudent("James Bond", CDate(1980, 4, 11), 2010) != CStudent("James Bond", CDate(1980, 4, 11), 2016));
    assert(!(CStudent("James Bond", CDate(1980, 4, 11), 2010) == CStudent("James Bond", CDate(1980, 4, 11), 2016)));
    assert(CStudent("James Bond", CDate(1980, 4, 11), 2010) != CStudent("Peter Peterson", CDate(1980, 4, 11), 2016));
    assert(!(CStudent("James Bond", CDate(1980, 4, 11), 2010) == CStudent("Peter Peterson", CDate(1980, 4, 11), 2016)));
    assert(CStudent("James Bond", CDate(1980, 4, 11), 2010) != CStudent("Peter Peterson", CDate(1997, 6, 17), 2010));
    assert(!(CStudent("James Bond", CDate(1980, 4, 11), 2010) == CStudent("Peter Peterson", CDate(1997, 6, 17), 2010)));
    assert(CStudent("James Bond", CDate(1980, 4, 11), 2010) != CStudent("James Bond", CDate(1997, 6, 17), 2016));
    assert(!(CStudent("James Bond", CDate(1980, 4, 11), 2010) == CStudent("James Bond", CDate(1997, 6, 17), 2016)));
    assert(CStudent("James Bond", CDate(1980, 4, 11), 2010) != CStudent("Peter Peterson", CDate(1997, 6, 17), 2016));
    assert(!(CStudent("James Bond", CDate(1980, 4, 11), 2010) == CStudent("Peter Peterson", CDate(1997, 6, 17), 2016)));
    assert(x0.addStudent(CStudent("John Peter Taylor", CDate(1983, 7, 13), 2014)));
    assert(x0.addStudent(CStudent("John Taylor", CDate(1981, 6, 30), 2012)));
    assert(x0.addStudent(CStudent("Peter Taylor", CDate(1982, 2, 23), 2011)));
    assert(x0.addStudent(CStudent("Peter John Taylor", CDate(1984, 1, 17), 2017)));
    assert(x0.addStudent(CStudent("James Bond", CDate(1981, 7, 16), 2013)));
    assert(x0.addStudent(CStudent("James Bond", CDate(1982, 7, 16), 2013)));
    assert(x0.addStudent(CStudent("James Bond", CDate(1981, 8, 16), 2013)));
    assert(x0.addStudent(CStudent("James Bond", CDate(1981, 7, 17), 2013)));
    assert(x0.addStudent(CStudent("James Bond", CDate(1981, 7, 16), 2012)));
    assert(x0.addStudent(CStudent("Bond James", CDate(1981, 7, 16), 2013)));
    assert(x0.search(CFilter(), CSort()) == (std::list<CStudent>{
                                                CStudent("John Peter Taylor", CDate(1983, 7, 13), 2014),
                                                CStudent("John Taylor", CDate(1981, 6, 30), 2012),
                                                CStudent("Peter Taylor", CDate(1982, 2, 23), 2011),
                                                CStudent("Peter John Taylor", CDate(1984, 1, 17), 2017),
                                                CStudent("James Bond", CDate(1981, 7, 16), 2013),
                                                CStudent("James Bond", CDate(1982, 7, 16), 2013),
                                                CStudent("James Bond", CDate(1981, 8, 16), 2013),
                                                CStudent("James Bond", CDate(1981, 7, 17), 2013),
                                                CStudent("James Bond", CDate(1981, 7, 16), 2012),
                                                CStudent("Bond James", CDate(1981, 7, 16), 2013)}));
    assert(x0.search(CFilter().name("james Bond"), CSort()) == (std::list<CStudent>{
                                                                   CStudent("James Bond", CDate(1981, 7, 16), 2013),
                                                                   CStudent("James Bond", CDate(1982, 7, 16), 2013),
                                                                   CStudent("James Bond", CDate(1981, 8, 16), 2013),
                                                                   CStudent("James Bond", CDate(1981, 7, 17), 2013),
                                                                   CStudent("James Bond", CDate(1981, 7, 16), 2012),
                                                                   CStudent("Bond James", CDate(1981, 7, 16), 2013)}));
    // assert(x0.search(CFilter().name("Peter John Taylor"), CSort().addKey(ESortKey::NAME, true)) == (std::list<CStudent>{
    //                                                                                                    CStudent("John Peter Taylor", CDate(1983, 7, 13), 2014),
    //                                                                                                    CStudent("Peter John Taylor", CDate(1984, 1, 17), 2017)}));
    assert(x0.search(CFilter(), CSort().addKey(ESortKey::NAME, true)) == (std::list<CStudent>{
                                                                             CStudent("Bond James", CDate(1981, 7, 16), 2013),
                                                                             CStudent("James Bond", CDate(1981, 7, 16), 2013),
                                                                             CStudent("James Bond", CDate(1982, 7, 16), 2013),
                                                                             CStudent("James Bond", CDate(1981, 8, 16), 2013),
                                                                             CStudent("James Bond", CDate(1981, 7, 17), 2013),
                                                                             CStudent("James Bond", CDate(1981, 7, 16), 2012),
                                                                             CStudent("John Peter Taylor", CDate(1983, 7, 13), 2014),
                                                                             CStudent("John Taylor", CDate(1981, 6, 30), 2012),
                                                                             CStudent("Peter John Taylor", CDate(1984, 1, 17), 2017),
                                                                             CStudent("Peter Taylor", CDate(1982, 2, 23), 2011)}));
    assert(x0.search(CFilter(), CSort().addKey(ESortKey::NAME, false)) == (std::list<CStudent>{
                                                                              CStudent("Peter Taylor", CDate(1982, 2, 23), 2011),
                                                                              CStudent("Peter John Taylor", CDate(1984, 1, 17), 2017),
                                                                              CStudent("John Taylor", CDate(1981, 6, 30), 2012),
                                                                              CStudent("John Peter Taylor", CDate(1983, 7, 13), 2014),
                                                                              CStudent("James Bond", CDate(1981, 7, 16), 2013),
                                                                              CStudent("James Bond", CDate(1982, 7, 16), 2013),
                                                                              CStudent("James Bond", CDate(1981, 8, 16), 2013),
                                                                              CStudent("James Bond", CDate(1981, 7, 17), 2013),
                                                                              CStudent("James Bond", CDate(1981, 7, 16), 2012),
                                                                              CStudent("Bond James", CDate(1981, 7, 16), 2013)}));
    assert(x0.search(CFilter(), CSort().addKey(ESortKey::ENROLL_YEAR, false).addKey(ESortKey::BIRTH_DATE, false).addKey(ESortKey::NAME, true)) == (std::list<CStudent>{
                                                                                                                                                      CStudent("Peter John Taylor", CDate(1984, 1, 17), 2017),
                                                                                                                                                      CStudent("John Peter Taylor", CDate(1983, 7, 13), 2014),
                                                                                                                                                      CStudent("James Bond", CDate(1982, 7, 16), 2013),
                                                                                                                                                      CStudent("James Bond", CDate(1981, 8, 16), 2013),
                                                                                                                                                      CStudent("James Bond", CDate(1981, 7, 17), 2013),
                                                                                                                                                      CStudent("Bond James", CDate(1981, 7, 16), 2013),
                                                                                                                                                      CStudent("James Bond", CDate(1981, 7, 16), 2013),
                                                                                                                                                      CStudent("James Bond", CDate(1981, 7, 16), 2012),
                                                                                                                                                      CStudent("John Taylor", CDate(1981, 6, 30), 2012),
                                                                                                                                                      CStudent("Peter Taylor", CDate(1982, 2, 23), 2011)}));
    assert(x0.search(CFilter().name("james bond"), CSort().addKey(ESortKey::ENROLL_YEAR, false).addKey(ESortKey::BIRTH_DATE, false).addKey(ESortKey::NAME, true)) == (std::list<CStudent>{
                                                                                                                                                                         CStudent("James Bond", CDate(1982, 7, 16), 2013),
                                                                                                                                                                         CStudent("James Bond", CDate(1981, 8, 16), 2013),
                                                                                                                                                                         CStudent("James Bond", CDate(1981, 7, 17), 2013),
                                                                                                                                                                         CStudent("Bond James", CDate(1981, 7, 16), 2013),
                                                                                                                                                                         CStudent("James Bond", CDate(1981, 7, 16), 2013),
                                                                                                                                                                         CStudent("James Bond", CDate(1981, 7, 16), 2012)}));
    // std::cout << "===================================================\n";
    assert(x0.search(CFilter().name("james bond").name("james bond").name("james"), CSort().addKey(ESortKey::ENROLL_YEAR, false).addKey(ESortKey::BIRTH_DATE, false).addKey(ESortKey::NAME, true)) == (std::list<CStudent>{
                                                                                                                                                                                                          CStudent("James Bond", CDate(1982, 7, 16), 2013),
                                                                                                                                                                                                          CStudent("James Bond", CDate(1981, 8, 16), 2013),
                                                                                                                                                                                                          CStudent("James Bond", CDate(1981, 7, 17), 2013),
                                                                                                                                                                                                          CStudent("Bond James", CDate(1981, 7, 16), 2013),
                                                                                                                                                                                                          CStudent("James Bond", CDate(1981, 7, 16), 2013),
                                                                                                                                                                                                          CStudent("James Bond", CDate(1981, 7, 16), 2012)}));
    //  std::cout << "===================================================\n";
    assert(x0.search(CFilter().bornAfter(CDate(1980, 4, 11)).bornBefore(CDate(1983, 7, 13)).name("John Taylor").name("james BOND"), CSort().addKey(ESortKey::ENROLL_YEAR, false).addKey(ESortKey::BIRTH_DATE, false).addKey(ESortKey::NAME, true)) == (std::list<CStudent>{
                                                                                                                                                                                                                                                          CStudent("James Bond", CDate(1982, 7, 16), 2013),
                                                                                                                                                                                                                                                          CStudent("James Bond", CDate(1981, 8, 16), 2013),
                                                                                                                                                                                                                                                          CStudent("James Bond", CDate(1981, 7, 17), 2013),
                                                                                                                                                                                                                                                          CStudent("Bond James", CDate(1981, 7, 16), 2013),
                                                                                                                                                                                                                                                          CStudent("James Bond", CDate(1981, 7, 16), 2013),
                                                                                                                                                                                                                                                          CStudent("James Bond", CDate(1981, 7, 16), 2012),
                                                                                                                                                                                                                                                          CStudent("John Taylor", CDate(1981, 6, 30), 2012)}));
    //  std::cout << "=======================hereeeeeeeeeeeeeeeeeee============================\n";
    assert(x0.search(CFilter().bornAfter(CDate(1980, 4, 11)).bornBefore(CDate(1983, 7, 13)).enrolledAfter(2020).enrolledBefore(2040).name("John Taylor").name("james BOND"), CSort().addKey(ESortKey::ENROLL_YEAR, false).addKey(ESortKey::BIRTH_DATE, false).addKey(ESortKey::NAME, true)) == std::list<CStudent>());
    assert(x0.search(CFilter().name("james"), CSort().addKey(ESortKey::NAME, true)) == (std::list<CStudent>{}));
    assert(x0.suggest("peter") == (std::set<std::string>{
                                      "John Peter Taylor",
                                      "Peter John Taylor",
                                      "Peter Taylor"}));
    assert(x0.suggest("bond") == (std::set<std::string>{
                                     "Bond James",
                                     "James Bond"}));
    assert(x0.suggest("peter joHn") == (std::set<std::string>{
                                           "John Peter Taylor",
                                           "Peter John Taylor"}));
    assert(x0.suggest("peter joHn bond") == (std::set<std::string>{}));
    assert(x0.suggest("pete") == (std::set<std::string>{}));
    assert(x0.suggest("peter joHn PETER") == (std::set<std::string>{
                                                 "John Peter Taylor",
                                                 "Peter John Taylor"}));
    assert(!x0.addStudent(CStudent("James Bond", CDate(1981, 7, 16), 2013)));
    assert(x0.delStudent(CStudent("James Bond", CDate(1981, 7, 16), 2013)));
    assert(x0.search(CFilter().bornAfter(CDate(1980, 4, 11)).bornBefore(CDate(1983, 7, 13)).name("John Taylor").name("james BOND"), CSort().addKey(ESortKey::ENROLL_YEAR, false).addKey(ESortKey::BIRTH_DATE, false).addKey(ESortKey::NAME, true)) == (std::list<CStudent>{
                                                                                                                                                                                                                                                          CStudent("James Bond", CDate(1982, 7, 16), 2013),
                                                                                                                                                                                                                                                          CStudent("James Bond", CDate(1981, 8, 16), 2013),
                                                                                                                                                                                                                                                          CStudent("James Bond", CDate(1981, 7, 17), 2013),
                                                                                                                                                                                                                                                          CStudent("Bond James", CDate(1981, 7, 16), 2013),
                                                                                                                                                                                                                                                          CStudent("James Bond", CDate(1981, 7, 16), 2012),
                                                                                                                                                                                                                                                          CStudent("John Taylor", CDate(1981, 6, 30), 2012)}));
    assert(!x0.delStudent(CStudent("James Bond", CDate(1981, 7, 16), 2013)));
    CStudyDept x1;
    assert(x1.search(CFilter(), CSort()) == (std::list<CStudent>{}));
    // x1.addStudent(CStudent("Ayush", CDate(1997, 6, 17), 2010));
    // x1.addStudent(CStudent("Ayush", CDate(1998, 6, 17), 2010));
    // x1.addStudent(CStudent("Ayush", CDate(1999, 6, 17), 2010));
    // assert(x1.search(CFilter().bornAfter(CDate(1997, 6, 17)).bornBefore(CDate(1999, 6, 17)).name("Ayush"), CSort().addKey(ESortKey::BIRTH_DATE, true)) == (std::list<CStudent>{
    //                                                                                                                                                         CStudent("Ayush", CDate(1997, 6, 17), 2010),
    //                                                                                                                                                         CStudent("Ayush", CDate(1998, 6, 17), 2010)}));
    // return EXIT_SUCCESS;
}
#endif /* __PROGTEST__ */