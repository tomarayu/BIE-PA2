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

class CStudent
{
public:
  CStudent(const std::string &name,
           const CDate &born,
           int enrolled) : m_name(name), m_born(born), m_enrolled(enrolled) {}

  bool operator==(const CStudent &other) const;
  bool operator!=(const CStudent &other) const { return !(*this == other); };

  // getters
  std::string getName() const { return m_name; }
  CDate getBorn() const { return m_born; };
  int getEnrolled() const { return m_enrolled; };

private:
  // todo
  std::string m_name;
  CDate m_born;
  int m_enrolled;
};

class CFilter
{
public:
  CFilter()
    :m_bornAfter(0,0,0), m_bornBefore(0,0,0),
    m_empty(true){}
  
  // getters
    CFilter &name(const std::string &name) {
    m_names.insert(toLower(name));
    m_empty = false;
    return *this;
  }

  CFilter &bornBefore(const CDate &date) {
    m_bornBefore = date;
    m_empty = false;
    return *this;
  }

  CFilter &bornAfter(const CDate &date) {
    m_bornAfter = date;
    m_empty = false;
    return *this;
  }

  CFilter &enrolledBefore(int year) {
    m_enrolledBefore = year;
    m_empty = false;
    return *this;
  }

  CFilter &enrolledAfter(int year) {
    m_enrolledAfter = year;
    m_empty = false;
    return *this;
  }

  bool isEmpty() const { return m_empty; }
  const std::set<std::string>& getNames() const { return m_names; }
  const CDate& getBornBefore() const { return m_bornBefore; }
  const CDate& getBornAfter() const { return m_bornAfter; }
  int getEnrolledBefore() const { return m_enrolledBefore; }
  int getEnrolledAfter() const { return m_enrolledAfter; }

private:
  // todo

    std::string toLower(const std::string& str) const {
    std::string lowerStr = str;
    std::transform(lowerStr.begin(), lowerStr.end(), lowerStr.begin(), ::tolower);
    return lowerStr;
  }

  bool m_empty=false;;
  std::set<std::string> m_names;
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
    m_empty = 1;
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
    // todo
    struct CompareByName
    {
      bool operator()(const std::shared_ptr<CStudent>&a, const std::shared_ptr<CStudent>&b) const
      {
        return a->getName() < b->getName();
      }
    }; // Add a semicolon here
    struct CompareByDate
    {
      bool operator()(const std::shared_ptr<CStudent>&a, const std::shared_ptr<CStudent>&b) const
      {
        return a->getBorn() < b->getBorn();
      }
    }; // Add a semicolon here
    struct CompareByYear
    {
      bool operator()(const std::shared_ptr<CStudent>&a, const std::shared_ptr<CStudent>&b) const
      {
        return a->getEnrolled() < b->getEnrolled();
      }
    }; // Add a semicolon here
    std::map<std::string, std::set<std::shared_ptr<CStudent>, CompareByName>> studentsByName;
    std::map<std::string, std::set<std::shared_ptr<CStudent>, CompareByDate>> studentsByDate;
    std::map<std::string, std::set<std::shared_ptr<CStudent>, CompareByYear>> studentsByYear;
    std::list<std::shared_ptr<CStudent>> studentSet;
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
    for (const auto &name : names)
    {
      studentsByName[name].insert(studentPtr);
      studentsByDate[name].insert(studentPtr);
      studentsByYear[name].insert(studentPtr);
    }
    return true;
  }

  bool CStudyDept::findStudent(const CStudent &other) const
  {
    for (auto student : studentSet)
    {
      if (*student == other)
      {
        return true;
      }
    }
    return false;
  }

  std::list<CStudent> CStudyDept::search(const CFilter &flt,
                                         const CSort &sortOpt) const
  {
    std::list<CStudent> result;
    if (flt.isEmpty() && sortOpt.isEmpty())
    {
      for (const auto &ptr : studentSet)
      {
        result.push_back(*ptr);
      }
    }
    result.sort([&](const CStudent &a, const CStudent &b)
                {
                  for (const auto &key : sortOpt.getKeys()){
                    bool ascending = sortOpt.getOrder(key);
                    switch (key){
                      case ESortKey::NAME:
                      if(a.getName() != b.getName()) return ascending ? a.getName() < b.getName() : a.getName() > b.getName();
                      break;
                      case ESortKey::BIRTH_DATE:
                      if(a.getBorn() != b.getBorn()) return ascending ? a.getBorn() < b.getBorn() : a.getBorn() > b.getBorn();
                      break;
                      case ESortKey::ENROLL_YEAR:
                      if(a.getEnrolled() != b.getEnrolled()) return ascending ? a.getEnrolled() < b.getEnrolled() : a.getEnrolled() > b.getEnrolled();
                      break;
                    }
                  }
                  return false;
                });
  // Create a new list to store the filtered students
std::list<CStudent> filteredStudents;
  std::copy_if(result.begin(), result.end(), std::back_inserter(filteredStudents),
    [&](const CStudent &student)
    {
      // Apply multiple filter conditions
      return student.getBorn() > flt.getBornAfter() && 
             student.getBorn() < flt.getBornBefore() &&
             (student.getName() == flt.getName1() || student.getName() == flt.getName2());
    });

    for (const auto student : result)
    {
      std::cout << student.getName() << std::endl;
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
    // assert(x0.search(CFilter().bornAfter(CDate(1980, 4, 11)).bornBefore(CDate(1983, 7, 13)).name("John Taylor").name("james BOND"), CSort().addKey(ESortKey::ENROLL_YEAR, false).addKey(ESortKey::BIRTH_DATE, false).addKey(ESortKey::NAME, true)) == (std::list<CStudent>{
    //                                                                                                                                                                                                                                                       CStudent("James Bond", CDate(1982, 7, 16), 2013),
    //                                                                                                                                                                                                                                                       CStudent("James Bond", CDate(1981, 8, 16), 2013),
    //                                                                                                                                                                                                                                                       CStudent("James Bond", CDate(1981, 7, 17), 2013),
    //                                                                                                                                                                                                                                                       CStudent("Bond James", CDate(1981, 7, 16), 2013),
    //                                                                                                                                                                                                                                                       CStudent("James Bond", CDate(1981, 7, 16), 2013),
    //                                                                                                                                                                                                                                                       CStudent("James Bond", CDate(1981, 7, 16), 2012),
    //                                                                                                                                                                                                                                                       CStudent("John Taylor", CDate(1981, 6, 30), 2012)}));
    // assert(x0.search(CFilter().name("james"), CSort().addKey(ESortKey::NAME, true)) == (std::list<CStudent>{}));
    // assert(x0.suggest("peter") == (std::set<std::string>{
    //                                   "John Peter Taylor",
    //                                   "Peter John Taylor",
    //                                   "Peter Taylor"}));
    // assert(x0.suggest("bond") == (std::set<std::string>{
    //                                  "Bond James",
    //                                  "James Bond"}));
    // assert(x0.suggest("peter joHn") == (std::set<std::string>{
    //                                        "John Peter Taylor",
    //                                        "Peter John Taylor"}));
    // assert(x0.suggest("peter joHn bond") == (std::set<std::string>{}));
    // assert(x0.suggest("pete") == (std::set<std::string>{}));
    // assert(x0.suggest("peter joHn PETER") == (std::set<std::string>{
    //                                              "John Peter Taylor",
    //                                              "Peter John Taylor"}));
    // assert(!x0.addStudent(CStudent("James Bond", CDate(1981, 7, 16), 2013)));
    // assert(x0.delStudent(CStudent("James Bond", CDate(1981, 7, 16), 2013)));
    // assert(x0.search(CFilter().bornAfter(CDate(1980, 4, 11)).bornBefore(CDate(1983, 7, 13)).name("John Taylor").name("james BOND"), CSort().addKey(ESortKey::ENROLL_YEAR, false).addKey(ESortKey::BIRTH_DATE, false).addKey(ESortKey::NAME, true)) == (std::list<CStudent>{
    //                                                                                                                                                                                                                                                       CStudent("James Bond", CDate(1982, 7, 16), 2013),
    //                                                                                                                                                                                                                                                       CStudent("James Bond", CDate(1981, 8, 16), 2013),
    //                                                                                                                                                                                                                                                       CStudent("James Bond", CDate(1981, 7, 17), 2013),
    //                                                                                                                                                                                                                                                       CStudent("Bond James", CDate(1981, 7, 16), 2013),
    //                                                                                                                                                                                                                                                       CStudent("James Bond", CDate(1981, 7, 16), 2012),
    //                                                                                                                                                                                                                                                       CStudent("John Taylor", CDate(1981, 6, 30), 2012)}));
    // assert(!x0.delStudent(CStudent("James Bond", CDate(1981, 7, 16), 2013)));
    return EXIT_SUCCESS;
  }
#endif /* __PROGTEST__ */
