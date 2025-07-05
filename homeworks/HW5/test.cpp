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
  virtual std::string toStringInside() const {
    return "";
  
  };
  virtual std::string toStringLast() const {
    return "";

  };
  virtual std::string toString() const {
    return "";
  };
  virtual std::string toStringLastLastAlone() const{
    return "";
  }; 
   virtual std::string toStringLastLast() const{
    return "";
  };
    virtual std::string toStringNotLast() const{
    return "";
  }; 
  virtual std::string toStringSingleAlone() const{
    return "";
  }
   virtual std::string toStringSecondLast() const{
    return "";
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
    // std::cout<< "added a partition in \n";
    partitions.push_back({partitionSize, partitionName});
    return *this;
  }
    std::string toStringLastLast()const override{
    std::ostringstream oss;
    oss << (type==MAGNETIC ? "HDD, " : "SSD, ") << std::to_string(size) << " GiB" << "\n";
    for (size_t i = 0; i < partitions.size(); i++)
    {
      if(i == partitions.size()-1){
        oss << "    \\-[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << "\n";
      }
      else oss << "    +-[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << "\n";
    }
    return oss.str();
  }
      std::string toStringLastLastAlone()const override{
    std::ostringstream oss;
    oss << (type==MAGNETIC ? "HDD, " : "SSD, ") << std::to_string(size) << " GiB" << "\n";
    for (size_t i = 0; i < partitions.size(); i++)
    {
      if(i == partitions.size()-1){
        oss << "  \\-[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << "\n";
      }
      else oss << "  +-[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << "\n";
    }
    return oss.str();
  }
      std::string toStringNotLast()const override{
    std::ostringstream oss;
    oss << (type==MAGNETIC ? "HDD, " : "SSD, ") << std::to_string(size) << " GiB" << "\n";
    for (size_t i = 0; i < partitions.size(); i++)
    {
      if(i == partitions.size()-1){
        oss << "| \\-[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << "\n";
      }
      else oss << "| +-[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << "\n";
    }
    return oss.str();
  }
        std::string toStringSingleAlone()const override{
    std::ostringstream oss;
    oss << (type==MAGNETIC ? "HDD, " : "SSD, ") << std::to_string(size) << " GiB" << "\n";
    for (size_t i = 0; i < partitions.size(); i++)
    {
      if(i == partitions.size()-1){
        oss << " | \\-[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << "\n";
      }
      else oss << " | +-[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << "\n";
    }
    return oss.str();
  }
          std::string toStringSecondLast()const override{
    std::ostringstream oss;
    oss << (type==MAGNETIC ? "HDD, " : "SSD, ") << std::to_string(size) << " GiB" << "\n";
    for (size_t i = 0; i < partitions.size(); i++)
    {
      if(i == partitions.size()-1){
        oss << "  | \\-[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << "\n";
      }
      else oss << "  | +-[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << "\n";
    }
    return oss.str();
  }
  std::string toStringLast()const override{
    std::ostringstream oss;
    oss << (type==MAGNETIC ? "HDD, " : "SSD, ") << std::to_string(size) << " GiB" << "\n";
    for (size_t i = 0; i < partitions.size(); i++)
    {
      if(i == partitions.size()-1){
        oss << "|   \\-[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << "\n";
      }
      else oss << "|   +-[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << "\n";
    }
    return oss.str();
  }
  std::string toStringInside() const override
  {
    std::ostringstream oss;
    oss << (type==MAGNETIC ? "HDD, " : "SSD, ") << std::to_string(size) << " GiB" << "\n";
    for (size_t i = 0; i < partitions.size(); i++)
    {
      if(i == partitions.size()-1){
        oss << "| | \\-[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << "\n";
      }
      else oss << "| | +-[" << i << "]: " << partitions[i].first << " GiB, " << partitions[i].second << "\n";
    }
    return oss.str();
  }
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
    oss << "Host: " << name << "\n";
    for (size_t i = 0; i < address.size(); i++)
    {
      oss << "+-" << address[i] << "\n";
    }
    for (size_t i = 0; i < components.size(); i++)
    {
      if(i == components.size()-1)
        {
          if(dynamic_cast<CDisk*>(components[i].get())){
            oss << "\\-" << components[i]->toStringLastLastAlone();
          }
          else
          oss << "\\-" << components[i]->toStringLast();
        }
      else
      {
        if(dynamic_cast<CDisk*>(components[i].get())){
          oss<< "+-" << components[i]->toStringNotLast();
        }else
          oss << "+-" << components[i]->toStringInside();
      }
    }
    return oss.str();
  }
    std::string toStringAlone() const
  {
    std::ostringstream oss;
    oss << "Host: " << name << "\n";
    for (size_t i = 0; i < address.size(); i++)
    {
      oss << "+-" << address[i] << "\n";
    }
    for (size_t i = 0; i < components.size(); i++)
    {
      if(i == components.size()-1)
        {
          if(dynamic_cast<CDisk*>(components[i].get())){
            oss << "\\-" << components[i]->toStringLastLast();
          }
          else
          oss << "\\-" << components[i]->toStringLast();
        }
      else
      {
        if(dynamic_cast<CDisk*>(components[i].get())){
          oss<< "+-" << components[i]->toStringSingleAlone();
        }else
          oss << "+-" << components[i]->toStringInside();
      }
    }
    return oss.str();
  }
    std::string toStringLast()const
  {
    std::ostringstream oss;
    oss << "Host: " << name << "\n";
    for (size_t i = 0; i < address.size(); i++)
    {
      oss << "  +-" << address[i] << "\n";
    }
    for (size_t i = 0; i < components.size(); i++)
    {
      if(i == components.size()-1){
        if(dynamic_cast<CDisk*>(components[i].get())){
          oss << "  \\-" << components[i]->toStringLastLast();
        }
        else
        oss << "  \\-" << components[i]->toStringLast();}
      else { 
        if(dynamic_cast<CDisk*>(components[i].get())){
          oss << "  +-" << components[i]->toStringSecondLast();
        }
        else oss << "  +-" << components[i]->toStringInside();};  
    }
    return oss.str();
  }
  std::string toStringInside()const
  {
    std::ostringstream oss;
    oss << "Host: " << name << "\n";
    for (size_t i = 0; i < address.size(); i++)
    {
      oss << "| +-" << address[i] << "\n";
    }
   // std::cout<< "comp size is "<< components.size() << std::endl;
    for (size_t i = 0; i < components.size(); i++)
    {
      if(i == components.size()-1){
        oss << "| \\-" << components[i]->toStringLast();}
      else  {
       // oss << "here in dtriginside\n";
        oss << "| +-" << components[i]->toStringInside();
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
  ~CNetwork() {}
  CNetwork(std::string name) : name(name) {}
  CNetwork &addComputer(const CComputer &computer)
  {
    computers.push_back(computer.clone());
    return *this;
  }

  std::string toString()const{
    std::ostringstream oss;
    oss << "Network: " << name << "\n";
    // if(computers.size() == 0){
    //   return oss.str();
    // }
    if(computers.size() == 1){
      oss << "\\-" << computers[0]->toStringAlone();
      return oss.str();
    }
    for(size_t i =0;i< computers.size();i++){
      if(i == computers.size()-1){
        oss << "\\-" << computers[i]->toStringLast();
      }
      else oss << "+-" << computers[i]->toStringInside();
    }
    return oss.str();
  }
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
    for (const auto &computer : other.computers)
    {
      computers.push_back(computer->clone());
    }
  }
  CNetwork &operator=(const CNetwork &other)
  {
    if (this != &other)
    {
      name = other.name;
      computers.clear();
      computers.reserve(other.computers.size());
      for (const auto &computer : other.computers)
      {
        computers.push_back(computer->clone());
      }
    }
    return *this;
  }

  CNetwork(CNetwork &&other) noexcept
  {
    name = std::move(other.name);
    computers = std::move(other.computers);
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
    std::string toStringInside() const override
  {
    return "CPU, " + std::to_string(cores) + " cores @ " + std::to_string(frequency) + "MHz" + "\n";
  }
    std::string toStringLast() const override
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
    std::string toStringInside() const override
  {
    return "Memory, " + std::to_string(memory) + " MiB" + "\n";
  }
    std::string toStringLast() const override
  {
    return "Memory, " + std::to_string(memory) + " MiB" + "\n";
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
 // auto d = x.findComputer("courses.fit.cvut.cz");

       // std::cout << d->toString() << std::endl;
        std::cout << c->toString() << std::endl;
      assert(toString(*c) ==
             "Host: imap.fit.cvut.cz\n"
             "+-147.32.232.238\n"
             "+-2001:718:2:2901::238\n"
             "+-CPU, 4 cores @ 2500MHz\n"
             "\\-Memory, 8000 MiB\n");
        //        assert(toString(*d) ==
        //  "+-Host: courses.fit.cvut.cz\n"
        //  "+-147.32.232.213\n"
        //  "+-CPU, 4 cores @ 1600MHz\n"
        //  "+-Memory, 4000 MiB\n"
        //  "\\-HDD, 2000 GiB\n"
        //  "  +-[0]: 100 GiB, /\n"
        //  "  \\-[1]: 1900 GiB, /data\n");

  c->addComponent(CDisk(CDisk::MAGNETIC, 1000).addPartition(100, "system").addPartition(200, "WWW").addPartition(700, "mail"));
  //     std::cout<< "All tests passedjererer\n";
   std::cout << x.toString() << std::endl;;
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

auto c3 = n.findComputer("courses.fit.cvut.cz");
std::cout<< c3->toString()<< std::endl;

  CNetwork n1("08431252.rdjnlwlcm.cz");

n1.addComputer(
    CComputer("08431252.rdjnlwlcm.cz")
        .addAddress("4.243.146.98")
        .addAddress("4.244.241.107")
        .addComponent(CMemory(8993))
        .addComponent(CDisk(CDisk::SSD, 1201).addPartition(184, "yuunxeikydgbbromykdlyfaw"))
        .addComponent(CDisk(CDisk::SSD, 1341).addPartition(241, "jhqjdkibrsnsik").addPartition(57, "wddvkjhrbwlsrfgfduidan"))
        .addComponent(CMemory(14156))
        .addComponent(CMemory(12681))
        .addComponent(CMemory(14048))
        .addComponent(CDisk(CDisk::SSD, 4714).addPartition(564, "mqfodniilirvfrvx").addPartition(554, "jsimmpqogebqrgsght").addPartition(29, "obnepamjkju").addPartition(356, "xhmwxtokgysrsnpbv"))
        .addComponent(CCPU(9, 833))
        .addComponent(CMemory(8954))
        .addComponent(CCPU(13, 1972))
        .addComponent(CDisk(CDisk::SSD, 3807).addPartition(1823, "bcabimbajlc").addPartition(265, "bwydhawkpio"))
        .addComponent(CDisk(CDisk::MAGNETIC, 1926).addPartition(207, "oiawhdxduwfkgwufttcsrtg").addPartition(140, "ydddfwsxaxsfdqmkwftdj").addPartition(86, "hswmpnxdxoc").addPartition(49, "wjttkeriwrftnyvubvwhps").addPartition(200, "pyqgfvuaelclgixgldfogxynhufn").addPartition(161, "hitkmtgarttivmwrhhljixcm").addPartition(269, "hjpppugthibaboprqneyy"))
        .addComponent(CCPU(10, 2117))
        .addComponent(CCPU(8, 1475))
        .addComponent(CMemory(15688))
);
CNetwork n2("NewNetwork");

n2.addComputer(
    CComputer("08431252.rdjnlwlcm.cz")
        .addAddress("4.243.146.98")
        .addAddress("4.244.241.107")
        .addComponent(CMemory(8993))
        .addComponent(CDisk(CDisk::SSD, 1201).addPartition(184, "yuunxeikydgbbromykdlyfaw"))
        .addComponent(CDisk(CDisk::SSD, 1341).addPartition(241, "jhqjdkibrsnsik").addPartition(57, "wddvkjhrbwlsrfgfduidan"))
        .addComponent(CMemory(14156))
        .addComponent(CMemory(12681))
);

std::cout<< n2.toString()<< std::endl;

std::cout << n1.toString() << std::endl;
  CNetwork fit("FIT network");
  fit.addComputer(
      CComputer("05001234.offnks.cz")
          .addAddress("4.210.128.130")
          .addComponent(CDisk(CDisk::SSD, 3618)
                            .addPartition(100, "glevyshykeeeb")
                            .addPartition(568, "relfaogghguccqaxmfnfmwhkjddu")
                            .addPartition(429, "khgftbrwshmp")
                            .addPartition(452, "qwbmlvmvpfoijl")
                            .addPartition(472, "igtlqowielckateuadccju")
                            .addPartition(175, "mjkjghylrftt"))
          .addComponent(CDisk(CDisk::SSD, 3715)
                            .addPartition(803, "dvwrerxjnqahvnp")
                            .addPartition(1073, "tnndfkxastofk")
                            .addPartition(1021, "uoaxrhsaijlri"))
          .addComponent(CDisk(CDisk::MAGNETIC, 4914)
                            .addPartition(670, "enqpmsxfyxvomegiiluuh")
                            .addPartition(769, "edfgwghbqtvklnxprpahglp")
                            .addPartition(1555, "rcukbdpeseqtnxdnqvcaepu"))
                    .addComponent(CCPU(1, 570))
          .addComponent(CCPU(4, 2538)));

          fit.addComputer(
    CComputer("09041235.odfuyoakp.cz")
        .addAddress("4.211.182.165")
        .addAddress("4.212.40.12")
        .addComponent(CCPU(8, 2003))
        .addComponent(CDisk(CDisk::MAGNETIC, 4769)
                          .addPartition(483, "vnugmvlqbucffpbswhiiecmemls")
                          .addPartition(575, "mgvgqtmtmelhcxdol")
                          .addPartition(54, "ghodilnwbuanatbdh")
                          .addPartition(709, "bxormatkfsweyubqlaeeexnjk")
                          .addPartition(580, "xyfecaegxnuxiptkckyi")
                          .addPartition(336, "nmmpdvustjskvajxlr"))
        .addComponent(CDisk(CDisk::SSD, 3049)
                          .addPartition(239, "stifsaqgnbdqgjvvqkypabehp")
                          .addPartition(541, "ytmgyebfdjyphuybkdftrfeqeajng")
                          .addPartition(236, "njrjilfxmopqpnfmiktcgcxg")
                          .addPartition(430, "wxtxleitotnckchivfkpla")
                          .addPartition(11, "xdturqmiuhxfuwodjf"))
        .addComponent(CMemory(2057))
        .addComponent(CDisk(CDisk::SSD, 2942)
                          .addPartition(139, "huffhsatatqmwiotosbxfrcwtwb")
                          .addPartition(298, "gmpxtoestmgwdqdoxbpsinuop")
                          .addPartition(344, "ugyfcfkpynlhkwiigpysukdb")
                          .addPartition(320, "tjxkchkimyflgk")
                          .addPartition(136, "xnestjludiorspe")
                          .addPartition(246, "dgvklmxqipbpvllodrffgdwutj")
                          .addPartition(19, "ekgtxtuglffuisitoqnjkjlppc"))
);
fit.addComputer(
    CComputer("01151236.dxcslldi.cz")
        .addAddress("4.213.173.142")
        .addAddress("4.214.221.216")
        .addComponent(CDisk(CDisk::SSD, 3411)
                          .addPartition(2769, "cdcytkvpaou"))
        .addComponent(CMemory(10931))
        .addComponent(CCPU(3, 2495))
        .addComponent(CMemory(5117))
        .addComponent(CMemory(11526))
);

fit.addComputer(
    CComputer("05491237.whphsne.cz")
        .addAddress("4.215.102.219")
        .addAddress("4.216.31.161")
        .addComponent(CDisk(CDisk::SSD, 2962)
                          .addPartition(499, "hegdydroeerwojebfnmvjucf"))
        .addComponent(CCPU(12, 615))
        .addComponent(CCPU(14, 1464))
        .addComponent(CDisk(CDisk::SSD, 4535)
                          .addPartition(286, "pyuurjpubkehtjwwqsscryumrqnoy")
                          .addPartition(166, "xwrybvgrgkqufibvkefqlcylgltp")
                          .addPartition(236, "ymaugiieiwww")
                          .addPartition(330, "exdbqfexgccykvota")
                          .addPartition(40, "irsepcyldsibsxfdeetsfhskajb")
                          .addPartition(533, "ncmviifgiscojavkurgpwmjotynj"))
        .addComponent(CCPU(13, 2516))
);

fit.addComputer(
    CComputer("00391238.kggoulvnu.cz")
        .addAddress("4.217.5.37")
        .addComponent(CMemory(10250))
        .addComponent(CMemory(1584))
        .addComponent(CMemory(4303))
        .addComponent(CCPU(3, 2199))
        .addComponent(CMemory(1328))
);

fit.addComputer(
    CComputer("00711239.oqka.cz")
        .addComponent(CCPU(10, 2988))
        .addComponent(CMemory(13162))
        .addComponent(CCPU(15, 2841))
        .addComponent(CDisk(CDisk::SSD, 3915)
                          .addPartition(103, "lvolthqbwcqxkixtf")
                          .addPartition(330, "qudfbuoywliybyagsqcxhyeonm")
                          .addPartition(453, "etyptbdlcclbvsjsucspmec")
                          .addPartition(523, "aankgmgujeiihpxnuuueipbqxj")
                          .addPartition(347, "roykcrprngjgpkruovqggopie")
                          .addPartition(257, "cvkfedypnpks"))
        .addComponent(CDisk(CDisk::SSD, 4085)
                          .addPartition(384, "rbcvqvqmwbygpgegopgdn")
                          .addPartition(128, "tkwngjyrnxj")
                          .addPartition(349, "fpkkfnwydxgoywmufksisvrgxqgqa")
                          .addPartition(638, "mwiixbsxegdyvkpcnwvpg")
                          .addPartition(210, "yjnbitcdmyeqnonyqrjkclfma")
                          .addPartition(591, "vuwbrsosnweyiehquvnjqaiw"))
);
fit.addComputer(
    CComputer("02151240.kiosifvpj.cz")
        .addAddress("4.218.71.49")
        .addAddress("4.219.133.0")
        .addAddress("4.220.248.157")
        .addAddress("4.221.139.88")
        .addComponent(CCPU(3, 2456))
        .addComponent(CMemory(7051))
        .addComponent(CMemory(2448))
        .addComponent(CDisk(CDisk::SSD, 1857)
                          .addPartition(93, "qtptwmghghauopfsghqmdc")
                          .addPartition(232, "uihbbykouhypsv")
                          .addPartition(244, "ewsvoqupgguygefkxssecxgoryij")
                          .addPartition(253, "japksleimloiipcsxd"))
        .addComponent(CCPU(7, 1117))
);

fit.addComputer(
    CComputer("06271241.iqmgxodma.cz")
        .addComponent(CCPU(1, 2233))
        .addComponent(CCPU(10, 2116))
        .addComponent(CMemory(1835))
        .addComponent(CDisk(CDisk::MAGNETIC, 1075)
                          .addPartition(827, "fbxnpehojqxillqslm"))
        .addComponent(CMemory(1085))
);

fit.addComputer(
    CComputer("00551242.djhmpvyfc.cz")
        .addAddress("4.222.128.1")
        .addAddress("4.223.123.8")
        .addAddress("4.224.73.14")
        .addComponent(CMemory(5883))
        .addComponent(CMemory(8264))
        .addComponent(CCPU(12, 586))
        .addComponent(CDisk(CDisk::SSD, 1675)
                          .addPartition(24, "yauyvxherlmqrurfqsqrthtrnm")
                          .addPartition(18, "fbujjorpxavpgdct")
                          .addPartition(148, "lxtwfdxfhiydgftfftkgwlyr")
                          .addPartition(48, "krbfxuadktgyunfh")
                          .addPartition(85, "qayptbttwjaqkfdewtblvhnpdpk")
                          .addPartition(195, "wpqgfldanixcmqnvnx"))
        .addComponent(CDisk(CDisk::MAGNETIC, 4212)
                          .addPartition(868, "nlmcqmkswsmrgirrasonbaqmbf")
                          .addPartition(592, "mdbdkjdrtpqtydrs"))
);
fit.addComputer(
    CComputer("03371243.ojflsrby.cz")
        .addAddress("4.225.22.126")
        .addAddress("4.226.39.204")
        .addAddress("4.227.175.35")
        .addComponent(CCPU(3, 2423))
        .addComponent(CMemory(4338))
        .addComponent(CMemory(10915))
        .addComponent(CDisk(CDisk::SSD, 2791)
                          .addPartition(331, "jbiqferdiyoyscfaagfrsc")
                          .addPartition(361, "yokpwfkfbbgmcnjvmiphqvfbhou")
                          .addPartition(278, "dtkeeyogtearctfyfudslmkupetip")
                          .addPartition(502, "gijhtcnpbunhpnbtjihwxmgs")
                          .addPartition(321, "bdcgptpcrvrjoukborir"))
        .addComponent(CDisk(CDisk::MAGNETIC, 4946)
                          .addPartition(378, "ejhgeaqmonxrcrneappsavny")
                          .addPartition(241, "ebwgitouooeyvdchejv")
                          .addPartition(354, "agdeqoarrvpjrgngyivqcr")
                          .addPartition(604, "sslwbjekxai")
                          .addPartition(677, "cogwehwufetxaoglootrxjy")
                          .addPartition(507, "pfbrkunpvmaoalagsbwsjcy"))
);

fit.addComputer(
    CComputer("03481244.pfpyom.cz")
        .addAddress("4.228.2.226")
        .addAddress("4.229.47.83")
        .addComponent(CCPU(2, 717))
        .addComponent(CCPU(11, 1900))
        .addComponent(CCPU(6, 2017))
        .addComponent(CMemory(5767))
        .addComponent(CDisk(CDisk::MAGNETIC, 3082)
                          .addPartition(2863, "btjfxorcatwrlqypuokffwbrxmal"))
);

fit.addComputer(
    CComputer("03901245.rnktmsva.cz")
        .addAddress("4.230.27.118")
        .addAddress("4.231.155.183")
        .addAddress("4.232.49.107")
        .addComponent(CMemory(3224))
        .addComponent(CMemory(3642))
        .addComponent(CCPU(15, 2789))
        .addComponent(CDisk(CDisk::MAGNETIC, 4581)
                          .addPartition(870, "imvxjxgcagfecsnuupqwkjs")
                          .addPartition(362, "xugvcrbhckjqbqyhe")
                          .addPartition(488, "nsbgkojmelf")
                          .addPartition(533, "cbqjyjxkalfofdegiwjffixcwnlv"))
        .addComponent(CDisk(CDisk::MAGNETIC, 1036)
                          .addPartition(18, "xuiouxpkxdeixaeqrgg")
                          .addPartition(10, "khbvlcfbdbvudupmcifphgbifa")
                          .addPartition(65, "xbbovkhpjxki")
                          .addPartition(30, "rmosbgpqvipyvntujryo")
                          .addPartition(143, "ncnonaloxjy")
                          .addPartition(45, "pxqqvrxjcfhvopafyaj")
                          .addPartition(19, "cpkkyosafpuxsghsairqvlcswmf"))
);

fit.addComputer(
    CComputer("03541246.cqlfe.cz")
        .addAddress("4.233.141.190")
        .addComponent(CDisk(CDisk::SSD, 1997)
                          .addPartition(233, "oedecojvmsjgndwlmlbnwimq")
                          .addPartition(137, "yetmlkfwhiltvkfycrhja")
                          .addPartition(219, "jakbqxhunbulimcixrsso")
                          .addPartition(111, "cqwyiyhofsyostt")
                          .addPartition(137, "llrbjadcfo")
                          .addPartition(246, "ppwnfvkdpvcgtlitdjloesooyt"))
                                  .addComponent(CCPU(10, 666))
        .addComponent(CMemory(1861))
        .addComponent(CCPU(9, 624))
        .addComponent(CMemory(15479))
);fit.addComputer(
    CComputer("05101248.vdrp.cz")
        .addAddress("4.236.206.148")
        .addComponent(CCPU(4, 2739))
        .addComponent(CMemory(1655))
        .addComponent(CMemory(13335))
        .addComponent(CMemory(11764))
        .addComponent(CDisk(CDisk::MAGNETIC, 1126)
                          .addPartition(139, "crqnqlfqocxyakjqujdvbgymny")
                          .addPartition(61, "ntdotrfdvuyassagfa")
                          .addPartition(23, "ocjknprimumnttttnosdfpkocsc")
                          .addPartition(38, "byxslcgxhmenxouuiektbq")
                          .addPartition(106, "cyftmbfnlkrdghjeprybp")
                          .addPartition(34, "jljeuqetbodype")
                          .addPartition(120, "hfgqampkjqtekpclkhyiblvp"))
        .addComponent(CDisk(CDisk::MAGNETIC, 3761)
                          .addPartition(500, "wjglapqvebtsqlt")
                          .addPartition(1118, "tctmqsvyvqxcxhqeygvomhvcenw")
                          .addPartition(206, "iovnmcavjdvmlxjnqsjqlmcyffwbq"))
);
fit.addComputer(
    CComputer("01851249.xjhvil.cz")
        .addAddress("4.236.206.148")
        .addAddress("4.237.59.58")
        .addAddress("4.238.241.18")
        .addComponent(CCPU(4, 2739))
        .addComponent(CMemory(12621))
        .addComponent(CDisk(CDisk::SSD, 2527)
                          .addPartition(263, "lneodtjjbjofeduhxvlrmqts")
                          .addPartition(352, "ebdulxpichkfurrdxykn")
                          .addPartition(129, "octigbpddqrpddeoyo")
                          .addPartition(123, "jfbtbwomxabsuyoamq"))
        .addComponent(CMemory(14940))
        .addComponent(CDisk(CDisk::SSD, 2463)
                          .addPartition(43, "fcoimcjmaqr")
                          .addPartition(333, "awvloiievhmdgllrbeifysscfvh")
                          .addPartition(468, "rdnmuhmbokur")
                          .addPartition(285, "jtyvgenscyhhgeifhmtrdknhcad")
                          .addPartition(73, "aftrxnmohfbnmxcypyx"))
);
fit.addComputer(
    CComputer("07521250.meanhs.cz")
        .addAddress("4.239.164.219")
        .addAddress("4.240.126.212")
        .addAddress("4.241.223.90")
        .addComponent(CCPU(15, 1891))
        .addComponent(CMemory(6490))
        .addComponent(CDisk(CDisk::SSD, 4171)
                          .addPartition(1180, "qpxacdmxcypjpvjjcq")
                          .addPartition(413, "kevsshnvaobh"))
        .addComponent(CMemory(14113))
        .addComponent(CDisk(CDisk::SSD, 2312)
                          .addPartition(756, "wkrgblcphwtniuceyjlru")
                          .addPartition(120, "msntmmikvbmcmegkyhanofxxyko"))
);

fit.addComputer(
    CComputer("08481251.cmuby.cz")
        .addComponent(CCPU(8, 1745))
        .addComponent(CDisk(CDisk::SSD, 2273)
                          .addPartition(472, "vettbhyaitdhnhrv"))
        .addComponent(CDisk(CDisk::MAGNETIC, 1870)
                          .addPartition(1369, "cndywlbqtsupyaoqaoifkbrciutdr"))
        .addComponent(CMemory(16352))
        .addComponent(CDisk(CDisk::MAGNETIC, 2310)
                          .addPartition(157, "ivbavgmydxvebjdjpjoyk")
                          .addPartition(267, "ncsxrdyhoooas")
                          .addPartition(54, "alurptqtndtjex")
                          .addPartition(206, "cilkoxhtncuiyhggincjfnt")
                          .addPartition(99, "kbjirxwdapjlmndmgvgxidocotlbt")
                          .addPartition(243, "mxknphymre"))
);

fit.addComputer(
    CComputer("06871252.hqkrhxes.cz")
        .addAddress("4.242.54.92")
        .addAddress("4.243.134.170")
        .addComponent(CCPU(9, 2301))
        .addComponent(CMemory(2886))
        .addComponent(CDisk(CDisk::SSD, 3702)
                          .addPartition(352, "rolqkvhkgovsgqwuif")
                          .addPartition(319, "nwgrpukaxrthtxxnmgpaukia")
                          .addPartition(355, "nadohihnkiyxbjwgyogfy")
                          .addPartition(88, "buwdsmflnpfhpqpcsj")
                          .addPartition(462, "vxednsyasvlkm")
                          .addPartition(155, "thhblvpystwxwtejnsvwn")
                          .addPartition(185, "tpkofvujxhuqkwm"))
        .addComponent(CMemory(2225))
        .addComponent(CMemory(9389))
);

fit.addComputer(
    CComputer("08701253.vqvnufdx.cz")
        .addAddress("4.244.168.134")
        .addAddress("4.245.59.76")
        .addAddress("4.246.26.219")
        .addAddress("4.247.251.150")
        .addComponent(CMemory(6929))
        .addComponent(CDisk(CDisk::SSD, 2411)
                          .addPartition(40, "eakuybilatbiltipqdjyljepshb")
                          .addPartition(137, "rmtrbyrypfyvepjjgtsdjsqaoagh")
                          .addPartition(334, "wmjduiecjnvjrrshhmnoidurdgq")
                          .addPartition(304, "vvjoowaynwdvsw")
                          .addPartition(56, "mdjxgfcnivqkjggnwclnn")
                          .addPartition(128, "igulejwpttsxj")
                          .addPartition(130, "hdcnjedeuqalrsgpfxso"))
        .addComponent(CCPU(14, 2359))
        .addComponent(CMemory(7843))
        .addComponent(CCPU(3, 2099))
);

auto c1 = fit.findComputer("05001234.offnks.cz");
std::cout << c1->toString() << std::endl;
auto c2 = fit.findComputer("09041235.odfuyoakp.cz");
std::cout << c2->toString() << std::endl;

// Add the rest of the computers in a similar manner

// Add the rest of the computers in a similar manner
// Add more computers in the same way...

  std::cout << fit.toString() << std::endl;
  assert(toString(fit) ==
         "Network: FIT network"
         "+-Host: 05001234.offnks.cz"
         "| +-4.210.128.130"
         "| +-SSD, 3618 GiB"
         "| | +-[0]: 100 GiB, glevyshykeeeb"
         "| | +-[1]: 568 GiB, relfaogghguccqaxmfnfmwhkjddu"
         "| | +-[2]: 429 GiB, khgftbrwshmp"
         "| | +-[3]: 452 GiB, qwbmlvmvpfoijl"
         "| | +-[4]: 472 GiB, igtlqowielckateuadccju"
         "| | \\-[5]: 175 GiB, mjkjghylrftt"
         "| +-SSD, 3715 GiB"
         "| | +-[0]: 803 GiB, dvwrerxjnqahvnp"
         "| | +-[1]: 1073 GiB, tnndfkxastofk"
         "| | \\-[2]: 1021 GiB, uoaxrhsaijlri"
         "+-HDD, 4914 GiB"
         "   +-[0]: 670 GiB, enqpmsxfyxvomegiiluuh"
         "   +-[1]: 769 GiB, edfgwghbqtvklnxprpahglp"
         "    \\-[2]: 1555 GiB, rcukbdpeseqtnxdnqvcaepu");

  return EXIT_SUCCESS;
}
#endif /* __PROGTEST__ */
