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

std::vector<std::string> splitIntoWords(const std::string &str)
{
  std::istringstream iss(str);
  std::vector<std::string> words((std::istream_iterator<std::string>(iss)),
                                 std::istream_iterator<std::string>());
  for (auto word : words)
  {
    // std::cout << word << std::endl;
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
           int enrolled) : m_name(name), m_born(born), m_enrolled(enrolled) {}

  bool operator==(const CStudent &other) const;
  bool operator!=(const CStudent &other) const { return !(*this == other); };

  // getters
  std::string getName() const { return m_name; }
  bool operator<(const CStudent &other) const
  {
    // Replace this with your own comparison logic
    return this->m_name < other.m_name;
  }
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
      : m_empty(true), m_bornBefore(0, 0, 0), m_bornAfter(0, 0, 0)
  {
  }

  // getters
  CFilter &name(const std::string &name)
  {
    m_names.push_back(name);
    m_empty = false;
    return *this;
  }

  CFilter &bornBefore(const CDate &date)
  {
    m_bornBefore = date;
    m_empty = false;
    return *this;
  }

  CFilter &bornAfter(const CDate &date)
  {
    m_bornAfter = date;
    m_empty = false;
    return *this;
  }

  CFilter &enrolledBefore(int year)
  {
    m_enrolledBefore = year;
    m_empty = false;
    return *this;
  }

  CFilter &enrolledAfter(int year)
  {
    m_enrolledAfter = year;
    m_empty = false;
    return *this;
  }

  bool isEmpty() const { return m_empty; }
  const std::vector<std::string> &getNames() const { return m_names; }
  const CDate &getBornBefore() const { return m_bornBefore; }
  const CDate &getBornAfter() const { return m_bornAfter; }
  int getEnrolledBefore() const { return m_enrolledBefore; }
  int getEnrolledAfter() const { return m_enrolledAfter; }

  // check which filters are active
  bool isNameFilterActive() const { return m_names.size(); }
  bool isBornAfterFilterActive() const { return m_bornAfter != CDate(0, 0, 0); }
  bool isBornBeforeFilterActive() const { return m_bornBefore != CDate(0, 0, 0); }
  bool isEnrolledBeforeFilterActive() const { return m_enrolledBefore != 0; }
  bool isEnrolledAfterFilterActive() const { return m_enrolledAfter != 0; }
  bool matches(const CStudent &student) const
  {
    if (isNameFilterActive() && std::find(m_names.begin(), m_names.end(), student.getName()) == m_names.end())
    {
      return false;
    }

    if (isBornAfterFilterActive() && student.getBorn() < m_bornAfter)
    {
      return false;
    }

    if (isBornBeforeFilterActive() && student.getBorn() > m_bornBefore)
    {
      return false;
    }

    if (isEnrolledAfterFilterActive() && student.getEnrolled() < m_enrolledAfter)
    {
      return false;
    }

    if (isEnrolledBeforeFilterActive() && student.getEnrolled() > m_enrolledBefore)
    {
      return false;
    }

    return true;
  }

private:
  // todo

  std::string toLower(const std::string &str) const
  {
    std::string lowerStr = str;
    std::transform(lowerStr.begin(), lowerStr.end(), lowerStr.begin(), ::tolower);
    return lowerStr;
  }

  bool m_empty = false;
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
  std::map<const CStudent *, int> sortOrder;

  bool compareStudents(const CStudent *a, const CStudent *b, const CSort &sortOpt) const
  {
    for (const auto &key : sortOpt.getKeys())
    {
      bool ascending = sortOpt.getOrder(key);
      switch (key)
      {
      case ESortKey::NAME:
        if (a->getName() != b->getName())
        {
          std::cout << "sorting on name \n";
          std::cout << "comaparing " << a->getName() << " " << a->getBorn() << " and " << b->getName() << " " << b->getBorn() << std::endl;
          return ascending ? a->getName() < b->getName() : a->getName() > b->getName();
        }
        break;
      case ESortKey::BIRTH_DATE:
        if (a->getBorn() != b->getBorn())
          return ascending ? a->getBorn() < b->getBorn() : a->getBorn() > b->getBorn();
        break;
      case ESortKey::ENROLL_YEAR:
        if (a->getEnrolled() != b->getEnrolled())
          return ascending ? a->getEnrolled() < b->getEnrolled() : a->getEnrolled() > b->getEnrolled();
        break;
      }
    }
    return false;
  }

private:
  // todo
  struct CompareByName
  {
    bool operator()(const std::shared_ptr<CStudent> &a, const std::shared_ptr<CStudent> &b) const
    {
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
  std::set<std::shared_ptr<CStudent>, CompareByName> studentsByName;
  std::set<std::shared_ptr<CStudent>, CompareByDate> studentsByDate;
  std::set<std::shared_ptr<CStudent>, CompareByYear> studentsByYear;
  std::vector<std::shared_ptr<CStudent>> studentSet;
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
  std::string name = x.getName();
  // std::transform(name.begin(), name.end(), name.begin(), ::tolower);
  // std::sort(name.begin(), name.end());
  studentsByName.insert(studentPtr);
  // for (const auto &name : names)
  // {
  //   studentsByName[name].insert(studentPtr);
  // }
  studentsByDate.insert(studentPtr);
  studentsByYear.insert(studentPtr);
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
  studentSet.erase(it);

  studentsByYear.erase(*it);
 // studentsByName[(*it)->getName()].erase(*it);
  studentsByDate.erase(*it);

  return true;
}

bool CStudyDept::findStudent(const CStudent &other) const
{
  // for (auto student : studentSet)
  // {
  //   if (student->getName() == other.getName() && student->getBorn() == other.getBorn() && student->getEnrolled() == other.getEnrolled())
  //   {
  //     // printf("student found\n");
  //     return true;
  //   }
  // }
  
    auto itDate = std::lower_bound(studentsByDate.begin(), studentsByDate.end(), other, [](const auto& student, const auto& other) {
    return student->getBorn() < other.getBorn();
  });

  // printf("student not found\n");
  return false;
}

std::list<CStudent> CStudyDept::search(const CFilter &flt,
                                       const CSort &sortOpt) const
{

  for (const auto &pair : studentsByName) {
   
        std::cout << pair->getName() << std::endl; // Assuming CStudent has a getName() method
    
    std::cout << std::endl;
}
  std::list<CStudent> result;

  // for(const auto & student : studentSet){
  //   std::cout<< student->getName() << std::endl;
  // }
  if (flt.isEmpty() && sortOpt.isEmpty())
  {
    for (const auto &ptr : studentSet)
    {
      result.push_back(*ptr);
    }
    return result;
  }
  if (flt.isEmpty() && !sortOpt.isEmpty())
  {
    std::cout << "org order is -> \n";
    for (const auto &ptr : studentSet)
    {
      result.push_back(*ptr);
      std::cout << ptr->getName() << " " << ptr->getName() << " " << ptr->getEnrolled() << std::endl;
    }
    auto comp = [this, &sortOpt](const CStudent &a, const CStudent &b)
    { return this->compareStudents(&a, &b, sortOpt); };
    result.sort(comp);
    for (std::list<CStudent>::iterator it = result.begin(); it != result.end(); ++it)
    {
      std::cout << it->getName() << " " << it->getBorn() << " " << it->getEnrolled() << std::endl;
    }
    std::cout << "returningggg\n";
    return result;
  }
  // std::cout << "filter is not empty" << std::endl;
  auto comp = [this, &sortOpt](const CStudent *a, const CStudent *b)
  { return this->compareStudents(a, b, sortOpt); };
  std::set<CStudent *, decltype(comp)> filteredStudents(comp);
  if (!flt.isEmpty())

  {
    std::cout << "filter is not empty" << std::endl;
    if (flt.isBornBeforeFilterActive() || flt.isBornAfterFilterActive())
    {
      std::shared_ptr<CStudent> tempStudentlow = std::make_shared<CStudent>(CStudent("", flt.getBornAfter(), 0));
      std::shared_ptr<CStudent> tempStudenthigh = std::make_shared<CStudent>(CStudent("", flt.getBornBefore(), 0));
      // if(flt.isBornAfterFilterActive()){
      // auto lower = studentsByDate.lower_bound(tempStudent);
      // }
      auto lower = flt.isBornAfterFilterActive() ? studentsByDate.lower_bound(tempStudentlow) : studentsByDate.begin();
      auto upper = flt.isBornBeforeFilterActive() ? studentsByDate.upper_bound(tempStudenthigh) : studentsByDate.end();

      // Iterate over the sorted list of students
      // std::vector<std::shared_ptr<CStudent>> filteredStudents;

      for (auto it = lower; it != upper; ++it)
      {
        if (flt.matches(**it))
          std::cout << "inserting " << it->get()->getBorn() << std::endl;
        filteredStudents.insert(it->get());
      }
    }
    if (flt.isEnrolledAfterFilterActive() || flt.isEnrolledBeforeFilterActive())
    {
      std::shared_ptr<CStudent> tempStudentEnrollLow = std::make_shared<CStudent>(CStudent("", CDate(0, 0, 0), flt.getEnrolledAfter()));
      std::shared_ptr<CStudent> tempStudentEnrollHigh = std::make_shared<CStudent>(CStudent("", CDate(0, 0, 0), flt.getEnrolledBefore()));

      auto lowerEnroll = flt.isEnrolledAfterFilterActive() ? studentsByYear.lower_bound(tempStudentEnrollLow) : studentsByYear.begin();
      auto upperEnroll = flt.isEnrolledBeforeFilterActive() ? studentsByYear.upper_bound(tempStudentEnrollHigh) : studentsByYear.end();

      for (auto it = lowerEnroll; it != upperEnroll; ++it)
      {
        // Only add the student if it's not already in the filtered list
        if (flt.matches(**it))
          filteredStudents.insert(it->get());
      }
    }
    if (flt.isNameFilterActive())
    {
      for (const auto &filterName : flt.getNames())
      {
        std::string sortedFIlterName = filterName;
        std::transform(sortedFIlterName.begin(), sortedFIlterName.end(), sortedFIlterName.begin(), ::tolower);
        std::istringstream iss(filterName);
        std::vector<std::string> filterWords((std::istream_iterator<std::string>(iss)),
                                             std::istream_iterator<std::string>());
        // std::sort(sortedFIlterName.begin(), sortedFIlterName.end());
        std::sort(filterWords.begin(), filterWords.end());

         for(auto words : filterWords){
          std::cout << "filter words are " << words << std::endl;
         }
        for (const auto &studentPair : studentsByName)
        {
          // Convert student name to lower case and split it into words
          std::string lowerStudentName = studentPair.get()->getName();
          std::transform(lowerStudentName.begin(), lowerStudentName.end(), lowerStudentName.begin(), ::tolower);
          std::istringstream iss(lowerStudentName);
          std::vector<std::string> studentWords((std::istream_iterator<std::string>(iss)),
                                                std::istream_iterator<std::string>());

          // Sort the words in student name
          std::sort(studentWords.begin(), studentWords.end());
          
        if(flt.matches(*studentPair)){
        std::cout << "inserting " << studentPair->getName() << std::endl;
        filteredStudents.insert(studentPair.get());
    }
           
        

        }
        //  continue; // Skip this student
      }

      // If the student passed all filters, add it to the filtered list
      //  filteredStudents.push_back(*student);
    }
  }

  // }
  // for (const auto student : result)
  // {
  //   //std::cout << student.getName() << std::endl;
  // }
  // return filteredStudentsVec
  std::list<CStudent> filteredStudentsList;
  for (const auto &studentPtr : filteredStudents)
  {
    std::cout << "adding " << studentPtr->getName() << " " << studentPtr->getEnrolled() << std::endl;
    filteredStudentsList.push_back(*studentPtr);
  }
  std::cout << "returning\n"
            << "size is " << filteredStudentsList.size() << std::endl;

  return filteredStudentsList;
}

std::set<std::string> CStudyDept::suggest(const std::string &name) const
{
  std::set<std::string> result;
  std::istringstream iss(name);
  // std::vector<std::string> nameWords((std::istream_iterator<std::string>(iss)),
  //                                    std::istream_iterator<std::string>());
  std::vector<std::string> nameWords;
  std::string word;
  while (iss >> word)
  {
    std::transform(word.begin(), word.end(), word.begin(), ::tolower);
    nameWords.push_back(word);
  }

  for (const auto &studentPair : studentSet)
  {
    std::string studentName = studentPair.get()->getName();
    std::transform(studentName.begin(), studentName.end(), studentName.begin(), ::tolower);
    // std::cout << studentName << std::endl;
    std::istringstream issStudentName(studentName);
    std::vector<std::string> studentNameWords((std::istream_iterator<std::string>(issStudentName)),
                                              std::istream_iterator<std::string>());
    //  std::sort(studentNameWords.begin(), studentNameWords.end());

    bool allWordsMatch = std::all_of(nameWords.begin(), nameWords.end(), [&](const std::string &word)
                                     { return std::find(studentNameWords.begin(), studentNameWords.end(), word) != studentNameWords.end(); });
    if (allWordsMatch)
    {
      // std::cout << "inserting " << studentName << std::endl;
      result.insert(studentPair.get()->getName());
    }
  }
  for (auto name : result)
  {
    // std::cout << name << std::endl;
  }
  // std::cout << "retteruenenfvivnoik\n";
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
  assert(x0.search(CFilter().bornAfter(CDate(1980, 4, 11)).bornBefore(CDate(1983, 7, 13)).name("John Taylor").name("james BOND"), CSort().addKey(ESortKey::ENROLL_YEAR, false).addKey(ESortKey::BIRTH_DATE, false).addKey(ESortKey::NAME, true)) == (std::list<CStudent>{
                                                                                                                                                                                                                                                        CStudent("James Bond", CDate(1982, 7, 16), 2013),
                                                                                                                                                                                                                                                        CStudent("James Bond", CDate(1981, 8, 16), 2013),
                                                                                                                                                                                                                                                        CStudent("James Bond", CDate(1981, 7, 17), 2013),
                                                                                                                                                                                                                                                        CStudent("Bond James", CDate(1981, 7, 16), 2013),
                                                                                                                                                                                                                                                        CStudent("James Bond", CDate(1981, 7, 16), 2013),
                                                                                                                                                                                                                                                        CStudent("James Bond", CDate(1981, 7, 16), 2012),
                                                                                                                                                                                                                                                        CStudent("John Taylor", CDate(1981, 6, 30), 2012)}));
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
  // x1.addStudent(CStudent("Ayush", CDate(1997, 6, 17), 2010));
  // x1.addStudent(CStudent("Ayush", CDate(1998, 6, 17), 2010));
  // x1.addStudent(CStudent("Ayush", CDate(1999, 6, 17), 2010));
  // assert(x1.search(CFilter().bornAfter(CDate(1997, 6, 17)).bornBefore(CDate(1999, 6, 17)).name("Ayush"), CSort().addKey(ESortKey::BIRTH_DATE, true)) == (std::list<CStudent>{
  //                                                                                                                                                         CStudent("Ayush", CDate(1997, 6, 17), 2010),
  //                                                                                                                                                         CStudent("Ayush", CDate(1998, 6, 17), 2010)}));
  // return EXIT_SUCCESS;
}
#endif /* __PROGTEST__ */
