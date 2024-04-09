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
  CFilter(){
    m_empty=1;
  }
  CFilter &name(const std::string &name);
  CFilter &bornBefore(const CDate &date);
  CFilter &bornAfter(const CDate &date);
  CFilter &enrolledBefore(int year);
  CFilter &enrolledAfter(int year);

  //getters
  int isEmpty() const { return m_empty; }

private:
  // todo
  int m_empty=0;
};

class CSort
{
public:
  CSort(){
    m_empty=1;
  }
  CSort &addKey(ESortKey key,
                bool ascending);

  //getters
  int isEmpty() const { return m_empty; }

private:
  // todo
  int m_empty=0;
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
  std::unordered_map<std::string, std::set<std::shared_ptr<CStudent>, CompareStudents>> students;
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
    students[name].insert(studentPtr);
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
  if(flt.isEmpty() && sortOpt.isEmpty()){
    for(const auto& ptr: studentSet){
      result.push_back(*ptr);
    }
  }
  for(const auto student: result){
    std::cout<<student.getName()<<std::endl;
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
  // assert(x0.search(CFilter(), CSort().addKey(ESortKey::NAME, true)) == (std::list<CStudent>{
  //                                                                          CStudent("Bond James", CDate(1981, 7, 16), 2013),
  //                                                                          CStudent("James Bond", CDate(1981, 7, 16), 2013),
  //                                                                          CStudent("James Bond", CDate(1982, 7, 16), 2013),
  //                                                                          CStudent("James Bond", CDate(1981, 8, 16), 2013),
  //                                                                          CStudent("James Bond", CDate(1981, 7, 17), 2013),
  //                                                                          CStudent("James Bond", CDate(1981, 7, 16), 2012),
  //                                                                          CStudent("John Peter Taylor", CDate(1983, 7, 13), 2014),
  //                                                                          CStudent("John Taylor", CDate(1981, 6, 30), 2012),
  //                                                                          CStudent("Peter John Taylor", CDate(1984, 1, 17), 2017),
  //                                                                          CStudent("Peter Taylor", CDate(1982, 2, 23), 2011)}));
  // assert(x0.search(CFilter(), CSort().addKey(ESortKey::NAME, false)) == (std::list<CStudent>{
  //                                                                           CStudent("Peter Taylor", CDate(1982, 2, 23), 2011),
  //                                                                           CStudent("Peter John Taylor", CDate(1984, 1, 17), 2017),
  //                                                                           CStudent("John Taylor", CDate(1981, 6, 30), 2012),
  //                                                                           CStudent("John Peter Taylor", CDate(1983, 7, 13), 2014),
  //                                                                           CStudent("James Bond", CDate(1981, 7, 16), 2013),
  //                                                                           CStudent("James Bond", CDate(1982, 7, 16), 2013),
  //                                                                           CStudent("James Bond", CDate(1981, 8, 16), 2013),
  //                                                                           CStudent("James Bond", CDate(1981, 7, 17), 2013),
  //                                                                           CStudent("James Bond", CDate(1981, 7, 16), 2012),
  //                                                                           CStudent("Bond James", CDate(1981, 7, 16), 2013)}));
  // assert(x0.search(CFilter(), CSort().addKey(ESortKey::ENROLL_YEAR, false).addKey(ESortKey::BIRTH_DATE, false).addKey(ESortKey::NAME, true)) == (std::list<CStudent>{
  //                                                                                                                                                   CStudent("Peter John Taylor", CDate(1984, 1, 17), 2017),
  //                                                                                                                                                   CStudent("John Peter Taylor", CDate(1983, 7, 13), 2014),
  //                                                                                                                                                   CStudent("James Bond", CDate(1982, 7, 16), 2013),
  //                                                                                                                                                   CStudent("James Bond", CDate(1981, 8, 16), 2013),
  //                                                                                                                                                   CStudent("James Bond", CDate(1981, 7, 17), 2013),
  //                                                                                                                                                   CStudent("Bond James", CDate(1981, 7, 16), 2013),
  //                                                                                                                                                   CStudent("James Bond", CDate(1981, 7, 16), 2013),
  //                                                                                                                                                   CStudent("James Bond", CDate(1981, 7, 16), 2012),
  //                                                                                                                                                   CStudent("John Taylor", CDate(1981, 6, 30), 2012),
  //                                                                                                                                                   CStudent("Peter Taylor", CDate(1982, 2, 23), 2011)}));
  // assert(x0.search(CFilter().name("james bond"), CSort().addKey(ESortKey::ENROLL_YEAR, false).addKey(ESortKey::BIRTH_DATE, false).addKey(ESortKey::NAME, true)) == (std::list<CStudent>{
  //                                                                                                                                                                      CStudent("James Bond", CDate(1982, 7, 16), 2013),
  //                                                                                                                                                                      CStudent("James Bond", CDate(1981, 8, 16), 2013),
  //                                                                                                                                                                      CStudent("James Bond", CDate(1981, 7, 17), 2013),
  //                                                                                                                                                                      CStudent("Bond James", CDate(1981, 7, 16), 2013),
  //                                                                                                                                                                      CStudent("James Bond", CDate(1981, 7, 16), 2013),
  //                                                                                                                                                                      CStudent("James Bond", CDate(1981, 7, 16), 2012)}));
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
