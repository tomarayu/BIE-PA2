#ifndef __PROGTEST__
#include <cstring>
#include <cstdlib>
#include <cstdio>
#include <cctype>
#include <climits>
#include <cstdint>
#include <cassert>
#include <cmath>
#include <iostream>
#include <iomanip>
#include <sstream>
#include <string>
#include <vector>
#include <algorithm>
#include <memory>
#include <functional>
#include <compare>
#include <stdexcept>
#endif /* __PROGTEST__ */
class CBigInt
{
private:
  // todo
  std::vector<int> mNum;
  bool mNegative = false;

public:
  CBigInt() = default;
  friend CBigInt operator+(const CBigInt &lhs, const CBigInt &rhs);
  friend CBigInt operator-(const CBigInt &lhs, const CBigInt &rhs);
  friend CBigInt operator*(const CBigInt &lhs, const CBigInt &rhs);
  CBigInt& operator+=(const CBigInt &other);
  CBigInt& operator*=(const CBigInt &other);
  CBigInt operator-() const;
  friend bool compbydigit(const CBigInt &lhs, const CBigInt &rhs);
  friend bool compbydigiteq(const CBigInt &lhs, const CBigInt &rhs);
  friend std::strong_ordering operator<=>(const CBigInt &lhs, const CBigInt &rhs);
  friend bool operator==(const CBigInt &lhs, const CBigInt &rhs);
  friend std::istream &operator>>(std::istream &is, CBigInt &num);
  friend std::ostream &operator<<(std::ostream &os, const CBigInt &obj);
  // default constructor

  // copying/assignment/destruction
  // CBigInt operator = (const char & newStr){
  //   return CBigInt(newStr);
  // }
  // int constructor
  CBigInt(int num) : CBigInt(std::to_string(num)) {}
  CBigInt(const char *numberstr) : CBigInt(std::string(numberstr)) {}

  // string constructor
  CBigInt(const std::string &numberstr)
  {
    // Remove leading zeros
    std::string str = numberstr;
    if (!str.empty() && str[0] == '-')
    {
      mNegative = true;
      str = str.substr(1);
     // std::cout << " str is " << str << std::endl;
    }
    size_t first_non_zero = str.find_first_not_of('0');
    if (first_non_zero != std::string::npos)
    {
      str.erase(0, first_non_zero);
    }
    else
    {
      str = "0";
      mNegative = false;
    }
    // str.erase(0, std::min(str.find_first_not_of('0'), str.size()-1));
    // Check for invalid characters
    auto it = std::find_if(str.begin(), str.end(), [](char c)
                           { return !std::isdigit(c); });
    if (it != str.end())
    {
      throw std::invalid_argument("Invalid character in string");
    }
    mNum.resize(str.size());
    std::transform(str.begin(), str.end(), mNum.begin(), [](char c)
                   { return c - '0'; });
  }

  //    // operator minus binary

  // comparison operators, any combination {CBigInt/int/string} {<,<=,>,>=,==,!=} {CBigInt/int/string}

  // input operator >>
};

// operator +, any combination {CBigInt/int/string} + {CBigInt/int/string}
CBigInt operator+(const CBigInt &lhs, const CBigInt &rhs)
{
  if (lhs.mNegative == rhs.mNegative)
  {
    std::vector<int> num1 = lhs.mNum, num2 = rhs.mNum;
    while (num1.size() < num2.size())
      num1.insert(num1.begin(), 0);
    while (num2.size() < num1.size())
      num2.insert(num2.begin(), 0);
    std::vector<int> result(num1.size() + 1, 0);
    int carry = 0;
    for (int i = num1.size() - 1; i >= 0; --i)
    {
      int sum = num1[i] + num2[i] + carry;
      result[i + 1] = sum % 10;
      carry = sum / 10;
    }
    result[0] = carry;
    size_t first_non_zero = 0;
    while (first_non_zero < result.size() && result[first_non_zero] == 0)
      ++first_non_zero;
    result.erase(result.begin(), result.begin() + first_non_zero);
    std::string strResult;
    std::transform(result.begin(), result.end(), std::back_inserter(strResult), [](int i)
                   { return '0' + i; });
    // std::cout<< strResult << std::endl;
    CBigInt res(strResult);
    res.mNegative = lhs.mNegative;
    return res;
  }
  else if (lhs.mNegative)
  {
    // lhs is negative , rhs is positive
  //  std::cout << "this case now and str is " << lhs << std::endl;
    return rhs - (-lhs);
  }
  else
  {
    // lhs is positive and rhs is negative
    return lhs - (rhs);
  }
}

// operator *, any combination {CBigInt/int/string} * {CBigInt/int/string}
CBigInt operator*(const CBigInt &lhs, const CBigInt &rhs)
{
 // std::cout<< "noww here with lhs and rhs" << lhs << rhs << std::endl;
  int lhsSize = lhs.mNum.size();
  int rhsSize = rhs.mNum.size();
  if ( lhsSize == 0 || rhsSize == 0 || lhs.mNum[0] == 0 || rhs.mNum[0] == 0)
  {
   //  std::cout<< "here===========\n";
    CBigInt res;
    res.mNum.push_back(0);
    return res;
  }

  std::vector<int> result(lhsSize + rhsSize, 0);
  bool negative = true;

  for (int i = lhsSize - 1; i >= 0; --i)
  {
    int carry = 0;
    for (int j = rhsSize - 1; j >= 0; --j)
    {
      int temp = lhs.mNum[i] * rhs.mNum[j] + result[i + j + 1] + carry;
      result[i + j + 1] = temp % 10;
      carry = temp / 10;
    }
    result[i] += carry;
  }
  while (!result.empty() && result.front() == 0)
  {
    result.erase(result.begin());
  }
  if (lhs.mNegative == rhs.mNegative)
  {
    negative = false;
  }
  CBigInt res;
  res.mNum = result;
  res.mNegative = negative;
   // std::cout<< " returning here and res is " << res << std::endl;
  return res;
}
CBigInt operator-(const CBigInt &lhs, const CBigInt &rhs)
{
  // through our implementation, both numbers will be postive
  std::strong_ordering comparison = lhs <=> rhs;
  // int comparison;
  if (comparison == std::strong_ordering::greater && (lhs.mNum.size() == rhs.mNum.size() && compbydigit(lhs, rhs)))
  {
    // std::cout << "hereeeeeeeeeeeeeeeeeeeeeee"
    //           << "\n";
    CBigInt temp;
    temp = rhs;
    temp.mNegative = false;
    return -(temp - lhs);
  }

  if (comparison == std::strong_ordering::less)
  {
    // std::cout<< "this is true";
    return -(rhs - lhs);
  }

  else if (comparison == std::strong_ordering::equal)
  {
    return CBigInt(0);
  }
  std::vector<int> result(lhs.mNum.size(), 0);
  // now lhs is greater than rhs

 // std::cout << " lhs and size are " << lhs << " " << result.size() << "\n";
  int borrow = 0;
  size_t lhsSize = lhs.mNum.size() - 1;
  size_t rhsSize = rhs.mNum.size() - 1;
  for (size_t i = 0; i <= result.size() - 1; ++i)
  {
    size_t lhs_digit = i < lhs.mNum.size() ? lhs.mNum[lhsSize] : 0;
    size_t rhs_digit = i < rhs.mNum.size() ? rhs.mNum[rhsSize] : 0;
    // std::cout<< "lhs dig is " << lhs_digit << " and rhs dig is " << rhs_digit << std::endl;
    int diff = lhs_digit - rhs_digit - borrow;
    if (diff < 0)
    {
      diff += 10;
      borrow = 1;
    }
    else
    {
      borrow = 0;
    }
    result[lhsSize] = diff;
    lhsSize--;
    rhsSize--;
  }

  // for (auto num : result)
  // {
  //   std::cout << num << "  ";
  // }
  // std::cout<<std::endl;
  size_t first_non_zero = 0;
  while (first_non_zero < result.size() && result[first_non_zero] == 0)
    ++first_non_zero;
  result.erase(result.begin(), result.begin() + first_non_zero);
  std::string strResult;
  std::transform(result.begin(), result.end(), std::back_inserter(strResult), [](int i)
                 { return '0' + i; });
  // std::cout<< strResult << std::endl;
  CBigInt res(strResult);
  res.mNegative = lhs.mNegative;
  return res;
}

// operator +=, any of {CBigInt/int/string}
CBigInt &CBigInt::operator+=(const CBigInt &other)
{
  *this = *this + other;
  return *this;
}
// operator *=, any of {CBigInt/int/string}
CBigInt &CBigInt::operator*=(const CBigInt &other)
{
 // std::cout<<"hererererer\n"; 
 // std::cout << other << std::endl;
  *this = *this * other;
  // std::cout<<"hererererer\n"; 
  return *this;
}
// operator minus unary
CBigInt CBigInt::operator-() const
{
  CBigInt result = *this;
  result.mNegative = !mNegative;
  return result;
}

bool compbydigit(const CBigInt &lhs, const CBigInt &rhs)
{
  //size_t lhsSize = lhs.mNum.size() - 1;
  size_t rhsSize = rhs.mNum.size() - 1;
  // std::cout<< "hereeeeeeeeeeeeeeeeeeeeeee================" << "\n";
  for (size_t i = 0; i <= rhsSize; ++i)
  {
    if (rhs.mNum[i] > lhs.mNum[i])
    {
      return true;
    }
  }
  return false;
}
bool compbydigiteq(const CBigInt &lhs, const CBigInt &rhs)
{
  //size_t lhsSize = lhs.mNum.size() - 1;
  size_t rhsSize = rhs.mNum.size() - 1;
  // std::cout<< "hereeeeeeeeeeeeeeeEQUALeeeeeeee================" << "\n";
  for (size_t i = 0; i <= rhsSize; ++i)
  {
    if (rhs.mNum[i] != lhs.mNum[i])
    {
      return false;
    }
  }
  return true;
}
std::strong_ordering operator<=>(const CBigInt &lhs, const CBigInt &rhs)
{
  // First, compare  the sign
  if (lhs.mNegative != rhs.mNegative)
  {
    // std::cout<< " This case " << " and lhs is " << mNegative << std::endl;
    return lhs.mNegative ? std::strong_ordering::less : std::strong_ordering::greater;
  }

  // If the signs are the same, compare the sizes
  if (lhs.mNum.size() != rhs.mNum.size())
  {
    return (lhs.mNum.size() < rhs.mNum.size()) ^ lhs.mNegative ? std::strong_ordering::less : std::strong_ordering::greater;
  }

  // If the sizes are the same, compare the digits from most significant to least significant
  ////std::cout<< rhs << std::endl;;
  // //std::cout<< *this << std::endl;;
  for (size_t i = 0; i <= rhs.mNum.size() - 1; ++i)
  {
    if (lhs.mNum[i] != rhs.mNum[i])
    {
      return (lhs.mNum[i] < rhs.mNum[i]) ^ lhs.mNegative ? std::strong_ordering::less : std::strong_ordering::greater;
    }
  }

  // If all digits are the same, the numbers are equal
  return std::strong_ordering::equal;
}
// equality operator
bool operator==(const CBigInt &lhs, const CBigInt &rhs)
{
  if (lhs.mNegative == rhs.mNegative && lhs.mNum.size() == rhs.mNum.size())
  {
    // std::cout << "hererererererer==== " << rhs << std::endl;
    return compbydigiteq(lhs, rhs);
  }
  return false;
}

// output operator <<
std::ostream &operator<<(std::ostream &os, const CBigInt &obj)
{
  if (obj.mNegative)
    os << "-";
  for (auto num : obj.mNum)
  {
    os << num;
  }
  // os<< std::endl;
  return os;
}

std::istream &operator>>(std::istream &is, CBigInt &num)
{
  std::string str;
  char c;
  while (std::isspace(is.peek()))
  {
    is.get();
  }
  while (std::isdigit(is.peek()))
  {
    is.get(c);
    str.push_back(c);
  }

  if (str.empty())
  {
    is.setstate(std::ios::failbit);
    return is;
  }

  num = CBigInt(str);
  return is;
}

#ifndef __PROGTEST__
static bool equal(const CBigInt &x, const char val[])
{
  std::ostringstream oss;
  oss << x;
  return oss.str() == val;
}
static bool equalHex(const CBigInt &x, const char val[])
{
  return true; // hex output is needed for bonus tests only
  //   std::ostringstream oss;
  //   oss << std::hex << x;
  //   return oss . str () == val;
}
int main()
{
  CBigInt a, b;
  std::istringstream is;
  a = 10;
  a += 20;
  assert(equal(a, "30"));
  a *= 5;
  assert(equal(a, "150"));
  b = a + 3;
  assert(equal(b, "153"));
  b = a * 7;
  assert(equal(b, "1050"));
  assert(equal(a, "150"));
  assert(equalHex(a, "96"));

  a = 10;
  a += -20;
  assert(equal(a, "-10"));
  a *= 5;
  assert(equal(a, "-50"));
  b = a + 73;
  assert(equal(b, "23"));
  b = a * -7;
  assert(equal(b, "350"));
  assert(equal(a, "-50"));
  assert(equalHex(a, "-32"));

  a = "12345678901234567890";
  a += "-99999999999999999999";
  assert(equal(a, "-87654321098765432109"));
  a *= "54321987654321987654";
  assert(equal(a, "-4761556948575111126880627366067073182286"));
  a *= 0;
  assert(equal(a, "0"));
  a = 10;
  b = a + "400";
  assert(equal(b, "410"));
  b = a * "15";
  assert(equal(b, "150"));
  assert(equal(a, "10"));
  assert(equalHex(a, "a"));

  is.clear();
  is.str(" 1234");
  // std::cout<< str<< std::endl;
  assert(is >> b);
  assert(equal(b, "1234"));
  is.clear();
  is.str(" 12 34");
  assert(is >> b);
  assert(equal(b, "12"));
  is.clear();
  is.str("999z");
  assert(is >> b);
  assert(equal(b, "999"));
  is.clear();
  is.str("abcd");
  assert(!(is >> b));
  is.clear();
  is.str("- 758");
  assert(!(is >> b));
  a = 42;
  try
  {
    a = "-xyz";
    assert("missing an exception" == nullptr);
  }
  catch (const std::invalid_argument &e)
  {
    assert(equal(a, "42"));
  }

  a = "73786976294838206464";
  assert(equal(a, "73786976294838206464"));
  assert(equalHex(a, "40000000000000000"));
  assert(a < "1361129467683753853853498429727072845824");
  assert(a <= "1361129467683753853853498429727072845824");
  assert(!(a > "1361129467683753853853498429727072845824"));
  assert(!(a >= "1361129467683753853853498429727072845824"));
  assert(!(a == "1361129467683753853853498429727072845824"));
  assert(a != "1361129467683753853853498429727072845824");
  assert(!(a < "73786976294838206464"));
  assert(a <= "73786976294838206464");
  assert(!(a > "73786976294838206464"));
  assert(a >= "73786976294838206464");
  assert(a == "73786976294838206464");
  assert(!(a != "73786976294838206464"));
  assert(a < "73786976294838206465");
  assert(a <= "73786976294838206465");
  assert(!(a > "73786976294838206465"));
  assert(!(a >= "73786976294838206465"));
  assert(!(a == "73786976294838206465"));
  assert(a != "73786976294838206465");
  a = "2147483648";
  assert(!(a < -2147483648));
  assert(!(a <= -2147483648));
  assert(a > -2147483648);
  assert(a >= -2147483648);
  assert(!(a == -2147483648));
  assert(a != -2147483648);
  a = "-12345678";
  assert(!(a < -87654321));
  assert(!(a <= -87654321));
  assert(a > -87654321);
  assert(a >= -87654321);
  assert(!(a == -87654321));
  assert(a != -87654321);
  // a = "10";
  // b = "10";

 // CBigInt c = "-100000" + a;
  //  CBigInt c ;
  //  std::cout << c <<std::endl;
  // c = "111111111111111111111";
  //12345679012345679012320987654320987654321
//    c*= a*b;
//    CBigInt d = c;
//    CBigInt e = b+a;
//    CBigInt f = e;
//  //  c = b*a;
//     std::cout << c <<std::endl;
//     std::cout << d <<std::endl;
//     std::cout << e <<std::endl;
//     std::cout << f <<std::endl;


  return EXIT_SUCCESS;
}
#endif /* __PROGTEST__ */
