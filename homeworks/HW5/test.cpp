#ifndef __PROGTEST__
#include <cassert>
#include <iostream>
#include <sstream>
#include <iomanip>
#include <string>
#include <vector>
#include <map>
#include <set>
#include <list>
#include <algorithm>
#include <memory>
#include <functional>
#endif /* __PROGTEST__ */

class Component
{
public:
  virtual ~Component() {} // Add a virtual destructor to the base class
  virtual std::unique_ptr<Component> clone() const = 0;
  virtual std::string toStringInside() const = 0;
  virtual std::string toStringLast() const = 0;
  virtual std::string toString() const = 0;
};

class CComputer
{
public:
  std::string name;
  std::vector<std::unique_ptr<Component>> components;
  std::vector<std::string> address; // there can be multiple addresses

  std::unique_ptr<CComputer> clone() const
  {
    auto cloned = std::make_unique<CComputer>(name);
    cloned->address = this->address;
    for (const auto &component : components)
    {
      cloned->components.push_back(component->clone());
    }
    return cloned;
  }

  CComputer(std::string name) : name(name) {}

  template <typename T>
  CComputer &addComponent(T component)
  {
    components.push_back(std::make_unique<T>(std::move(component)));
    return *this;
  }
  CComputer &addAddress(const std::string &address)
  {
    this->address.push_back(address);
    return *this;
  }
  std::string getName() const
  {
    return name;
  }

  std::string toString() const
  {
    std::ostringstream oss;
    oss << "Host: " << name << std::endl;
    for (const auto &addr : address)
    {
      oss << "+-" << addr << std::endl;
    }
    for (size_t i = 0; i < components.size(); i++)
    {
      oss << (i == components.size() - 1 ? "\\-" : "+-") << components[i]->toStringInside();
    }
    return oss.str();
  }

  std::string toStringLast() const
  {

    std::ostringstream oss;
    // oss<< "hreeee\n";
    oss << "Host: " << name << std::endl;
    for (const auto &addr : address)
    {
      oss << "  +-" << addr << std::endl;
    }
    for (size_t i = 0; i < components.size(); i++)
    {
      oss << " " << (i == components.size() - 1 ? " \\-" : " +-") << components[i]->toStringInside();
    }
    return oss.str();
  }
  std::string toStringInside() const
  {

    std::ostringstream oss;
    oss << "Host: " << name << std::endl;
    for (const auto &addr : address)
    {
      oss << "| +-" << addr << std::endl;
    }

    for (size_t i = 0; i < components.size(); i++)
    {
      if (i == components.size() - 1)
      {
        // oss << "here in the lastcomp:))";
        oss << "| \\-" << components[i]->toStringLast();
      }
      else
      {
        oss << "|"
            << " +-" << components[i]->toStringInside();
      }
    }
    return oss.str();
  }
  friend std::ostream &operator<<(std::ostream &os, const CComputer &computer)
  {
    os << computer.toString();
    return os;
  }
};
class CNetwork
{
  std::string name;
  std::vector<std::unique_ptr<CComputer>> computers;

public:
  CNetwork(std::string name) : name(name) {}
  CNetwork &addComputer(const CComputer &computer)
  {
    computers.push_back(computer.clone());
    return *this;
  }

public:
  CComputer *findComputer(const std::string &name)
  {
    for (auto &computer : computers)
    {
      if (computer->getName() == name)
      { // Assuming getName() is a method in CComputer
        return computer.get();
      }
    }
    return nullptr;
  }
  CNetwork(const CNetwork &other)
  {
    name = other.name;
    // For each computer in the other network, clone it and add it to this network
    for (const auto &computer : other.computers)
    {
      computers.push_back(computer->clone());
    }
  }
  CNetwork &operator=(CNetwork &&other) noexcept
  {
    if (this != &other)
    {
      name = std::move(other.name);
      computers = std::move(other.computers);
    }
    return *this;
  }

  std::string toString() const
  {
    std::ostringstream oss;
    oss << "Network: " << name << std::endl;
    for (size_t i = 0; i < computers.size(); ++i)
    {
      if (i == computers.size() - 1)
      {
        // printf("here in the lastcomp:))");
        oss << "\\-" << computers[i]->toStringLast();
      }
      else
      {
        oss << (i == computers.size() - 1 ? "\\-" : "+-") << computers[i]->toStringInside();
      }
    }
    return oss.str();
  }
  friend std::ostream &operator<<(std::ostream &os, const CNetwork &network)
  {
    // Implement the details of how you want to print your CNetwork object
    // For example:
    os << network.toString(); // Assuming getName() is a method in CNetwork
    return os;
  }
};
class CCPU : public Component
{
  int cores;
  int frequency;

public:
  std::unique_ptr<Component> clone() const override
  {
    return std::make_unique<CCPU>(*this);
  }
  CCPU(int cores, int frequency) : cores(cores), frequency(frequency) {}
  std::string toString() const override
  {
    return "CPU, " + std::to_string(cores) + " cores @ " + std::to_string(frequency) + "MHz" + "\n";
  }
  std::string toStringLast() const override
  {
    return "CPU, " + std::to_string(cores) + " cores @ " + std::to_string(frequency) + "MHz" + "\n";
  }
  std::string toStringInside() const override
  {
    return "CPU, " + std::to_string(cores) + " cores @ " + std::to_string(frequency) + "MHz" + "\n";
  }
};
class CMemory : public Component
{
  int memory;

public:
  CMemory(int memory) : memory(memory) {}

  std::unique_ptr<Component> clone() const override
  {
    return std::make_unique<CMemory>(*this);
  }
  std::string toString() const override
  {
    return "Memory, " + std::to_string(memory) + " MiB" + "\n";
  }
  std::string toStringLast() const override
  {
    std::ostringstream oss;
    oss << "Memory, " + std::to_string(memory) + " MiB" << std::endl;
    return oss.str();
  }
  std::string toStringInside() const override
  {
    std::ostringstream oss;
    oss << "Memory, " + std::to_string(memory) + " MiB" << std::endl;
    return oss.str();
  }
};

class CDisk : public Component
{
public:
  enum Type
  {
    MAGNETIC,
    SSD
  };
  Type type;
  int size;
  std::vector<std::pair<int, std::string>> partitions;

  std::unique_ptr<Component> clone() const override
  {
    return std::make_unique<CDisk>(*this);
  }
  CDisk(Type type, int size) : type(type), size(size) {}

  CDisk(const CDisk &other)
      : type(other.type), size(other.size), partitions(other.partitions) {}
  CDisk &addPartition(int partitionSize, const std::string &partitionName)
  {
    std::cout<< "added a partition in \n";  
    partitions.push_back({partitionSize, partitionName});
    return *this;
  }
  std::string toString() const override
  {
    std::ostringstream oss;
    oss << (type == MAGNETIC ? "HDD" : "SSD") << ", " << size << " GiB" << std::endl;
    for (size_t i = 0; i < partitions.size(); i++)
    {
      oss << (i == partitions.size() - 1 ? "  \\-" : "  +-") << "[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << std::endl;
    }
  }

  std::string toStringLast() const override
  {
    std::ostringstream oss;
    oss << (type == MAGNETIC ? "HDD" : "SSD") << ", " << size << " GiB" << std::endl;
    for (size_t i = 0; i < partitions.size(); i++)
    {
      oss /*<< "\n"*/ << (i == partitions.size() - 1 ? "|   \\-" : "|   +-") << "[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << std::endl;
    }

    return oss.str();
  }

  std::string toStringInside() const override
  {
    std::ostringstream oss;

    oss << (type == MAGNETIC ? "HDD" : "SSD") << ", " << size << " GiB" << std::endl;
    for (size_t i = 0; i < partitions.size(); i++)
    {
      oss /*<< "\n"*/ << (i == partitions.size() - 1 ? "| | \\-" : "| | +-") << "[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << std::endl;
    }

    return oss.str();
  }
};

#ifndef __PROGTEST__
template <typename T_>
std::string toString(const T_ &x)
{
  std::ostringstream oss;
  oss << x;
  return oss.str();
}

int main()
{
  CNetwork n("FIT network");
  n.addComputer(
       CComputer("progtest.fit.cvut.cz").addAddress("147.32.232.142").addComponent(CCPU(8, 2400)).addComponent(CCPU(8, 1200)).addComponent(CDisk(CDisk::MAGNETIC, 1500).addPartition(50, "/").addPartition(5, "/boot").addPartition(1000, "/var")).addComponent(CDisk(CDisk::SSD, 60).addPartition(60, "/data")).addComponent(CMemory(2000)).addComponent(CMemory(2000)))
      .addComputer(
          CComputer("courses.fit.cvut.cz").addAddress("147.32.232.213").addComponent(CCPU(4, 1600)).addComponent(CMemory(4000)).addComponent(CDisk(CDisk::MAGNETIC, 2000).addPartition(100, "/").addPartition(1900, "/data")))
      .addComputer(
          CComputer("imap.fit.cvut.cz").addAddress("147.32.232.238").addComponent(CCPU(4, 2500)).addAddress("2001:718:2:2901::238").addComponent(CMemory(8000)));

  std::cout << n.toString() << std::endl;

  assert(toString(n) ==
         "Network: FIT network\n"
         "+-Host: progtest.fit.cvut.cz\n"
         "| +-147.32.232.142\n"
         "| +-CPU, 8 cores @ 2400MHz\n"
         "| +-CPU, 8 cores @ 1200MHz\n"
         "| +-HDD, 1500 GiB\n"
         "| | +-[0]: 50 GiB, /\n"
         "| | +-[1]: 5 GiB, /boot\n"
         "| | \\-[2]: 1000 GiB, /var\n"
         "| +-SSD, 60 GiB\n"
         "| | \\-[0]: 60 GiB, /data\n"
         "| +-Memory, 2000 MiB\n"
         "| \\-Memory, 2000 MiB\n"
         "+-Host: courses.fit.cvut.cz\n"
         "| +-147.32.232.213\n"
         "| +-CPU, 4 cores @ 1600MHz\n"
         "| +-Memory, 4000 MiB\n"
         "| \\-HDD, 2000 GiB\n"
         "|   +-[0]: 100 GiB, /\n"
         "|   \\-[1]: 1900 GiB, /data\n"
         "\\-Host: imap.fit.cvut.cz\n"
         "  +-147.32.232.238\n"
         "  +-2001:718:2:2901::238\n"
         "  +-CPU, 4 cores @ 2500MHz\n"
         "  \\-Memory, 8000 MiB\n");
  CNetwork x = n;
  auto c = x.findComputer("imap.fit.cvut.cz");
  std::cout << c->toString() << std::endl;
  assert(toString(*c) ==
         "Host: imap.fit.cvut.cz\n"
         "+-147.32.232.238\n"
         "+-2001:718:2:2901::238\n"
         "+-CPU, 4 cores @ 2500MHz\n"
         "\\-Memory, 8000 MiB\n");
  c->addComponent(CDisk(CDisk::MAGNETIC, 1000).addPartition(100, "system").addPartition(200, "WWW").addPartition(700, "mail"));
  std::cout << x.toString() << std::endl;
  assert(toString(x) ==
         "Network: FIT network\n"
         "+-Host: progtest.fit.cvut.cz\n"
         "| +-147.32.232.142\n"
         "| +-CPU, 8 cores @ 2400MHz\n"
         "| +-CPU, 8 cores @ 1200MHz\n"
         "| +-HDD, 1500 GiB\n"
         "| | +-[0]: 50 GiB, /\n"
         "| | +-[1]: 5 GiB, /boot\n"
         "| | \\-[2]: 1000 GiB, /var\n"
         "| +-SSD, 60 GiB\n"
         "| | \\-[0]: 60 GiB, /data\n"
         "| +-Memory, 2000 MiB\n"
         "| \\-Memory, 2000 MiB\n"
         "+-Host: courses.fit.cvut.cz\n"
         "| +-147.32.232.213\n"
         "| +-CPU, 4 cores @ 1600MHz\n"
         "| +-Memory, 4000 MiB\n"
         "| \\-HDD, 2000 GiB\n"
         "|   +-[0]: 100 GiB, /\n"
         "|   \\-[1]: 1900 GiB, /data\n"
         "\\-Host: imap.fit.cvut.cz\n"
         "  +-147.32.232.238\n"
         "  +-2001:718:2:2901::238\n"
         "  +-CPU, 4 cores @ 2500MHz\n"
         "  +-Memory, 8000 MiB\n"
         "  \\-HDD, 1000 GiB\n"
         "    +-[0]: 100 GiB, system\n"
         "    +-[1]: 200 GiB, WWW\n"
         "    \\-[2]: 700 GiB, mail\n");
  assert(toString(n) ==
         "Network: FIT network\n"
         "+-Host: progtest.fit.cvut.cz\n"
         "| +-147.32.232.142\n"
         "| +-CPU, 8 cores @ 2400MHz\n"
         "| +-CPU, 8 cores @ 1200MHz\n"
         "| +-HDD, 1500 GiB\n"
         "| | +-[0]: 50 GiB, /\n"
         "| | +-[1]: 5 GiB, /boot\n"
         "| | \\-[2]: 1000 GiB, /var\n"
         "| +-SSD, 60 GiB\n"
         "| | \\-[0]: 60 GiB, /data\n"
         "| +-Memory, 2000 MiB\n"
         "| \\-Memory, 2000 MiB\n"
         "+-Host: courses.fit.cvut.cz\n"
         "| +-147.32.232.213\n"
         "| +-CPU, 4 cores @ 1600MHz\n"
         "| +-Memory, 4000 MiB\n"
         "| \\-HDD, 2000 GiB\n"
         "|   +-[0]: 100 GiB, /\n"
         "|   \\-[1]: 1900 GiB, /data\n"
         "\\-Host: imap.fit.cvut.cz\n"
         "  +-147.32.232.238\n"
         "  +-2001:718:2:2901::238\n"
         "  +-CPU, 4 cores @ 2500MHz\n"
         "  \\-Memory, 8000 MiB\n");
  return EXIT_SUCCESS;
}
#endif /* __PROGTEST__ */
