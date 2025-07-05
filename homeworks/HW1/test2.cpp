#ifndef __PROGTEST__
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <cassert>
#include <cstring>
#include <iostream>
#include <iomanip>
#include <string>
#include <vector>
#include <memory>
#include <compare>
#include <functional>
#include <stdexcept>
#include <algorithm>
#endif /* __PROGTEST__ */

// -----------------------------------------------------------------------------
// Data structure to hold a single person's info
// -----------------------------------------------------------------------------
struct TPerson
{
    std::string     name;
    std::string     addr;
    std::string     account;
    long long  sumIncome;
    long long  sumExpense;

    TPerson(const std::string & n, const std::string & a, const std::string & acc)
      : name(n), addr(a), account(acc),
        sumIncome(0), sumExpense(0)
    {
    }
};

// Comparator for sorting by (name, addr)
struct ByNameComparator
{
    bool operator()(const TPerson & lhs, const TPerson & rhs) const
    {
        int c = lhs.name.compare(rhs.name);
        if (c != 0) return c < 0;
        return lhs.addr < rhs.addr;
    }
};

// Comparator for sorting by account
struct ByAccountComparator
{
    bool operator()(const TPerson & lhs, const TPerson & rhs) const
    {
        return lhs.account < rhs.account;
    }
};

// -----------------------------------------------------------------------------
// CIterator class
// -----------------------------------------------------------------------------
class CIterator
{
  public:
    CIterator(const std::vector<TPerson> & data)
      : m_Data(data),
        m_Pos(0)
    {
    }

    bool atEnd(void) const
    {
        return m_Pos >= m_Data.size();
    }

    void next(void)
    {
        if (m_Pos < m_Data.size())
            m_Pos++;
    }

    const std::string & name(void) const
    {
        return m_Data[m_Pos].name;
    }

    const std::string & addr(void) const
    {
        return m_Data[m_Pos].addr;
    }

    const std::string & account(void) const
    {
        return m_Data[m_Pos].account;
    }

  private:
    const std::vector<TPerson> & m_Data;
    size_t                  m_Pos;
};

// -----------------------------------------------------------------------------
// CTaxRegister class
// -----------------------------------------------------------------------------
class CTaxRegister
{
  public:
    // Default constructor
    CTaxRegister (void)
    {
      // nothing needed
    }

    // Destructor
    ~CTaxRegister (void)
    {
      // vectors clean up themselves
    }

    // birth (name, addr, acct)
    bool birth(const std::string & name, const std::string & addr, const std::string & account)
    {
        // 1) check for existing (name, addr)
        auto byNamePos = findByName(name, addr);
        if (byNamePos.first) 
            return false; // duplicate

        // 2) check for existing account
        auto byAcctPos = findByAccount(account);
        if (byAcctPos.first)
            return false; // duplicate

        // Insert
        TPerson newRec(name, addr, account);

        // insert into m_ByName
        m_ByName.insert(m_ByName.begin() + byNamePos.second, newRec);
        // insert into m_ByAccount
        m_ByAccount.insert(m_ByAccount.begin() + byAcctPos.second, newRec);

        return true;
    }

    // death (name, addr)
    bool death(const std::string & name, const std::string & addr)
    {
        // find in m_ByName
        auto byNamePos = findByName(name, addr);
        if (! byNamePos.first)
            return false;

        // remove from m_ByName
        std::string acct = m_ByName[byNamePos.second].account;
        m_ByName.erase(m_ByName.begin() + byNamePos.second);

        // remove from m_ByAccount
        auto byAcctPos = findByAccount(acct);
        if (! byAcctPos.first)
            return false;
        m_ByAccount.erase(m_ByAccount.begin() + byAcctPos.second);

        return true;
    }

    // income by account
    bool income(const std::string & account, long long amount)
    {
        auto byAcctPos = findByAccount(account);
        if (! byAcctPos.first)
            return false;

        m_ByAccount[byAcctPos.second].sumIncome += amount;

        // also update m_ByName
        const TPerson & ref = m_ByAccount[byAcctPos.second];
        auto byNamePos = findByName(ref.name, ref.addr);
        if (! byNamePos.first) return false;
        m_ByName[byNamePos.second].sumIncome += amount;

        return true;
    }

    // income by (name, addr)
    bool income(const std::string & name, const std::string & addr, long long amount)
    {
        auto byNamePos = findByName(name, addr);
        if (! byNamePos.first)
            return false;

        m_ByName[byNamePos.second].sumIncome += amount;

        // also update m_ByAccount
        const std::string & acct = m_ByName[byNamePos.second].account;
        auto byAcctPos = findByAccount(acct);
        if (! byAcctPos.first) return false;
        m_ByAccount[byAcctPos.second].sumIncome += amount;

        return true;
    }

    // expense by account
    bool expense(const std::string & account, long long amount)
    {
        auto byAcctPos = findByAccount(account);
        if (! byAcctPos.first)
            return false;

        m_ByAccount[byAcctPos.second].sumExpense += amount;

        // also update m_ByName
        const TPerson & ref = m_ByAccount[byAcctPos.second];
        auto byNamePos = findByName(ref.name, ref.addr);
        if (! byNamePos.first) return false;
        m_ByName[byNamePos.second].sumExpense += amount;

        return true;
    }

    // expense by (name, addr)
    bool expense(const std::string & name, const std::string & addr, long long amount)
    {
        auto byNamePos = findByName(name, addr);
        if (! byNamePos.first)
            return false;

        m_ByName[byNamePos.second].sumExpense += amount;

        // also update m_ByAccount
        const std::string & acct = m_ByName[byNamePos.second].account;
        auto byAcctPos = findByAccount(acct);
        if (! byAcctPos.first) return false;
        m_ByAccount[byAcctPos.second].sumExpense += amount;

        return true;
    }

    //------------------------------------------------------------------------------
    // The main "long long" version of audit
    bool audit(const std::string & name,
               const std::string & addr,
               std::string & acct,
               long long & sumIncome,
               long long & sumExpense) const
    {
        auto byNamePos = findByNameConst(name, addr);
        if (! byNamePos.first)
            return false;

        const TPerson & rec = m_ByName[byNamePos.second];
        acct       = rec.account;
        sumIncome  = rec.sumIncome;
        sumExpense = rec.sumExpense;
        return true;
    }

    //------------------------------------------------------------------------------
    // Overload: "int" version, to match test code that uses int for sumIncome/sumExpense
    // This calls the main version, then casts down to int.
    bool audit(const std::string & name,
               const std::string & addr,
               std::string & acct,
               int & sumIncome,
               int & sumExpense) const
    {
        long long tmpInc  = 0;
        long long tmpExp  = 0;
        bool found = audit(name, addr, acct, tmpInc, tmpExp);
        if (found)
        {
            sumIncome  = static_cast<int>(tmpInc);
            sumExpense = static_cast<int>(tmpExp);
        }
        return found;
    }

    // Return an iterator over m_ByName
    CIterator listByName(void) const
    {
        return CIterator(m_ByName);
    }

  private:
    // Vectors for storing data
    std::vector<TPerson> m_ByName;
    std::vector<TPerson> m_ByAccount;

    // Return (found?, position) when searching m_ByName
    std::pair<bool,size_t> findByName(const std::string & name, const std::string & addr)
    {
        TPerson temp(name, addr, "");
        auto it = lower_bound(m_ByName.begin(), m_ByName.end(), temp, ByNameComparator());
        if (it != m_ByName.end() && it->name == name && it->addr == addr)
            return std::make_pair(true, distance(m_ByName.begin(), it));
        return std::make_pair(false, distance(m_ByName.begin(), it));
    }

    std::pair<bool,size_t> findByNameConst(const std::string & name, const std::string & addr) const
    {
        TPerson temp(name, addr, "");
        auto it = lower_bound(m_ByName.begin(), m_ByName.end(), temp, ByNameComparator());
        if (it != m_ByName.end() && it->name == name && it->addr == addr)
            return std::make_pair(true, distance(m_ByName.begin(), it));
        return std::make_pair(false, distance(m_ByName.begin(), it));
    }

    // Return (found?, position) when searching m_ByAccount
    std::pair<bool,size_t> findByAccount(const std::string & acct)
    {
        TPerson temp("", "", acct);
        auto it = lower_bound(m_ByAccount.begin(), m_ByAccount.end(), temp, ByAccountComparator());
        if (it != m_ByAccount.end() && it->account == acct)
            return std::make_pair(true, distance(m_ByAccount.begin(), it));
        return std::make_pair(false, distance(m_ByAccount.begin(), it));
    }

    std::pair<bool,size_t> findByAccountConst(const std::string & acct) const
    {
        TPerson temp("", "", acct);
        auto it = lower_bound(m_ByAccount.begin(), m_ByAccount.end(), temp, ByAccountComparator());
        if (it != m_ByAccount.end() && it->account == acct)
            return std::make_pair(true, distance(m_ByAccount.begin(), it));
        return std::make_pair(false, distance(m_ByAccount.begin(), it));
    }
};

#ifndef __PROGTEST__
int main ()
{
  std::string acct;
  int    sumIncome, sumExpense;
  CTaxRegister b0;
  assert ( b0 . birth ( "John Smith", "Oak Road 23", "123/456/789" ) );
  assert ( b0 . birth ( "Jane Hacker", "Main Street 17", "Xuj5#94" ) );
  assert ( b0 . birth ( "Peter Hacker", "Main Street 17", "634oddT" ) );
  assert ( b0 . birth ( "John Smith", "Main Street 17", "Z343rwZ" ) );
  assert ( b0 . income ( "Xuj5#94", 1000 ) );
  assert ( b0 . income ( "634oddT", 2000 ) );
  assert ( b0 . income ( "123/456/789", 3000 ) );
  assert ( b0 . income ( "634oddT", 4000 ) );
  assert ( b0 . income ( "Peter Hacker", "Main Street 17", 2000 ) );
  assert ( b0 . expense ( "Jane Hacker", "Main Street 17", 2000 ) );
  assert ( b0 . expense ( "John Smith", "Main Street 17", 500 ) );
  assert ( b0 . expense ( "Jane Hacker", "Main Street 17", 1000 ) );
  assert ( b0 . expense ( "Xuj5#94", 1300 ) );
  assert ( b0 . audit ( "John Smith", "Oak Road 23", acct, sumIncome, sumExpense ) );
  assert ( acct == "123/456/789" );
  assert ( sumIncome == 3000 );
  assert ( sumExpense == 0 );
  assert ( b0 . audit ( "Jane Hacker", "Main Street 17", acct, sumIncome, sumExpense ) );
  assert ( acct == "Xuj5#94" );
  assert ( sumIncome == 1000 );
  assert ( sumExpense == 4300 );
  assert ( b0 . audit ( "Peter Hacker", "Main Street 17", acct, sumIncome, sumExpense ) );
  assert ( acct == "634oddT" );
  assert ( sumIncome == 8000 );
  assert ( sumExpense == 0 );
  assert ( b0 . audit ( "John Smith", "Main Street 17", acct, sumIncome, sumExpense ) );
  assert ( acct == "Z343rwZ" );
  assert ( sumIncome == 0 );
  assert ( sumExpense == 500 );
  CIterator it = b0 . listByName ();
  assert ( ! it . atEnd ()
           && it . name () == "Jane Hacker"
           && it . addr () == "Main Street 17"
           && it . account () == "Xuj5#94" );
  it . next ();
  assert ( ! it . atEnd ()
           && it . name () == "John Smith"
           && it . addr () == "Main Street 17"
           && it . account () == "Z343rwZ" );
  it . next ();
  assert ( ! it . atEnd ()
           && it . name () == "John Smith"
           && it . addr () == "Oak Road 23"
           && it . account () == "123/456/789" );
  it . next ();
  assert ( ! it . atEnd ()
           && it . name () == "Peter Hacker"
           && it . addr () == "Main Street 17"
           && it . account () == "634oddT" );
  it . next ();
  assert ( it . atEnd () );

  assert ( b0 . death ( "John Smith", "Main Street 17" ) );

  CTaxRegister b1;
  assert ( b1 . birth ( "John Smith", "Oak Road 23", "123/456/789" ) );
  assert ( b1 . birth ( "Jane Hacker", "Main Street 17", "Xuj5#94" ) );
  assert ( !b1 . income ( "634oddT", 4000 ) );
  assert ( !b1 . expense ( "John Smith", "Main Street 18", 500 ) );
  assert ( !b1 . audit ( "John Nowak", "Second Street 23", acct, sumIncome, sumExpense ) );
  assert ( !b1 . death ( "Peter Nowak", "5-th Avenue" ) );
  assert ( !b1 . birth ( "Jane Hacker", "Main Street 17", "4et689A" ) );
  assert ( !b1 . birth ( "Joe Hacker", "Elm Street 23", "Xuj5#94" ) );
  assert ( b1 . death ( "Jane Hacker", "Main Street 17" ) );
  assert ( b1 . birth ( "Joe Hacker", "Elm Street 23", "Xuj5#94" ) );
  assert ( b1 . audit ( "Joe Hacker", "Elm Street 23", acct, sumIncome, sumExpense ) );
  assert ( acct == "Xuj5#94" );
  assert ( sumIncome == 0 );
  assert ( sumExpense == 0 );
  assert ( !b1 . birth ( "Joe Hacker", "Elm Street 23", "AAj5#94" ) );

  return EXIT_SUCCESS;
}
#endif /* __PROGTEST__ */