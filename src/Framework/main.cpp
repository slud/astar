#include "Component.hpp"
#include "Assert.hpp"

#include <boost/utility.hpp>

#include <iostream>
#include <string>

class CMyComponent : public TComponent<CMyComponent>
{
public:

    CMyComponent() :
        TComponent<CMyComponent>()
    {
    }
    
    virtual ~CMyComponent()
    {
        // No allocated memory to release.
    }

protected:

    virtual EComponentType GetComponentType() const
    {
        return e_Component;
    }
};

class CMyLeaf : public CMyComponent
{
public:

    CMyLeaf() :
        CMyComponent()
    {
    }
    
    virtual ~CMyLeaf()
    {
        // No allocated memory to release.
    }

protected:

    virtual EComponentType GetComponentType() const
    {
        //std::cout << "jestem lisciem" << std::endl;
        return e_Leaf;
    }

};

class CAudio : public CMyLeaf
{
public:
    CAudio() :
        CMyLeaf()
    {
    }

    virtual ~CAudio()
    {
    }
};

class CMyComposite : public CMyComponent
{
public:

    CMyComposite() :
        CMyComponent()
    {
    }

    virtual ~CMyComposite()
    {
        // No allocated memory to release.
    }
    
    CAudio& GetAudio();

protected:

    virtual EComponentType GetComponentType() const
    {
        //std::cout << "jestem kompozytem" << std::endl;
        return e_Composite;
    }

};

class CMyBuilder
{
public:
    static std::auto_ptr<CMyComponent> Audio() // Source idiom
    {
        std::auto_ptr<CMyComponent> ap(new CAudio);
        ap->SetName("Audio");
        return ap;
    }
};

CAudio& CMyComposite::GetAudio()
{
    return dynamic_cast<CAudio&>(this->operator[]("Audio"));
}

template<class T>
std::ostream& dout(std::ostream& out, T& val)
{
    out << val;
    return out;
}

int main()
{
    CMyComposite settings;

        //std::cout << "__SetName begin" << std::endl;
    settings.SetName("ustawienia programu");
        //std::cout << "__SetName end" << std::endl;

        //std::cout << "__GetName begin" << std::endl;
    std::cout << settings.GetName() << std::endl;
        //std::cout << "__GetName end" << std::endl;

        //std::cout << "__Add begin" << std::endl;
    settings.Add(CMyBuilder::Audio());
        //std::cout << "__Add end" << std::endl;
        
    //settings.Add(*(new CXmlElem("video")));
    //settings.Add(*(new CXmlElem("multiplayer")));

    //std::cout << settings["multiplayer"].GetName() << std::endl;
        //std::cout << "__[\"Audio\"].GetName begin" << std::endl;
    std::cout << settings["Audio"].GetName() << std::endl;
    std::cout << settings.GetAudio().GetName() << std::endl;
        //std::cout << "__[\"Audio\"].GetName end" << std::endl;
    //std::cout << settings["video"].GetName() << std::endl;

    return 0;
}
