#include <string>
#include <iostream>


class Bag{
private:
    struct Node
    {
        Node(const std::string & name , Node *next)
            : mName(name), mNext(next){}
            std::string mName;
            Node *mNext;
    };
    
    struct SharedData{
        Node *mHead = nullptr;
        Node *mTail = nullptr;
        ~SharedData(){
            Node *next;
            for (auto it = mHead; it; it = next){
                next = it->mNext;
                delete it;
            }
        }
        void addRef(){++mRefCount;}
        void delRef(){--mRefCount;}
        unsigned getRefCount()const {return mRefCount;}
    private:
        unsigned mRefCount = 1;

    };

    void release();

    SharedData *mData = nullptr;
public:
    Bag();
    Bag(const Bag &);
    Bag & operator = (const Bag & rhs);
    ~Bag();
    Bag& addItem(const std::string & name);
    bool delItem(const std::string &name);
};

Bag::Bag(): mData(new SharedData){}
Bag::Bag(const Bag & rhs){
    mData = rhs.mData;
    mData->addRef();
}

Bag::~Bag(){
    release();
}
void Bag::release(){
    mData->delRef();
    if(mData->getRefCount()==0){
        delete mData;
    }
}

Bag & Bag::operator= (const Bag & rhs){
    if( this==&rhs) return *this;
    Bag temp = rhs;
    std::swap(temp.mData , mData);
    return *this;
}

Bag& Bag::addItem(const std::string & name){
    Node *node = new Node(name, nullptr);
    if(mData->mHead == nullptr){
        mData->mHead = mData->mTail = node;
    }
    else{
        mData->mTail->mNext = node;
        mData->mTail = node;
    }
    return *this;
}
bool Bag::delItem(const std::string & name){
    Node  * prev = nullptr;
    for(Node *it =mData->mHead; it!=nullptr; it=it->mNext){
        if(it->mName==name){
            if(prev==nullptr) mData->mHead=it->mNext;
            else prev->mNext = it->mNext;
            if(it->mNext==nullptr) mData->mTail = prev;
            delete it;
            return true;
        }
        prev = it;
    }
    return false;
}

int main(){
    Bag b;
    b.addItem("water").addItem("Pills").addItem("shoes");
    std::cout <<b.delItem("Pills") << std::endl;
}