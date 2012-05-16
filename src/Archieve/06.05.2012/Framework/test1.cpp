#include <map>
#include <cassert>
#include <string>
#include <boost/utility.hpp>
#include <boost/shared_ptr.hpp>
#include "pugixml.hpp"
#include "Component.h"
#include "Utils.h"

#define nullptr 0

class CSettingsImpl;
class CVideoImpl;
class CBPPImpl;

class CSettingsBuilder
{
public:
    static CSettingsImpl& GetSettings();
    static CVideoImpl& GetVideo();
    static CBPPImpl& GetBPP();
};


// Ok here are the possible solution to this problem:
// 1. Use xml data binding - generate c++ classes from xsd using for example "c++/tree" library.
//    cons:
//      xerces-c++ xml parser - too big?
//      license GPL ver. 2
//    pros:
//      strongly typed
//      auto generated classes
//
// 2. Use boost property_tree
//    - generic data structures
//    - type convertions
//    - simple xml parser
//    - intuitive tree navigation
//
// 3. My solution is a mix of those two
//    - portable xml parser - no prebuilded libraries.
//    - my hand-written xml data binds - I know it shoul be done automatically
//      but this way I preserves my interface and train compositing and c++.
//
// 4. Use boost serialization.
//    It's ok to preserve object state but not to define the architecture.



// I was wondering where to put XmlComponent type in the class hierarchy.
// It was on purpose to hide that this is an xml-tree structure!

// We derive from CComponent<T> to ditinguish components of menu, settings, widgets etc.
// TODO: How to define a class with templated methods only.
class CSettingsComponent : public CComponent<CSettingsComponent>
{
public:
        virtual    CSettingsComponent*    operator[](std::string const& name);
        
        virtual    void                   Add(CSettingsComponent*);

        virtual    std::string const&     GetName() const                         =    0;
        
        virtual    void                   Remove(CSettingsComponent*);
        
public:
        virtual ~CSettingsComponent();
        
private:
        static const std::string m_EmptyString; 
};

const std::string CSettingsComponent::m_EmptyString("");

CSettingsComponent::~CSettingsComponent()
{
}

CSettingsComponent* CSettingsComponent::operator[](std::string const& name)
{
    assert(0 && "Invalid operation");
    return nullptr;
}

void CSettingsComponent::Add(CSettingsComponent*)
{
}

void CSettingsComponent::Remove(CSettingsComponent*)
{
}

std::string const& CSettingsComponent::GetName() const
{
    return m_EmptyString;
}



class CSettingsLeaf : public CSettingsComponent
{
public:
        virtual    std::string const&    GetValue() const                      =    0;
        virtual    void                  SetValue(std::string const& value)    =    0;
public:
        virtual    ~CSettingsLeaf();
};



class CSettingsComposite : public CSettingsComponent
{
public:
    virtual ~CSettingsComposite();
    // CComponent<T>
    virtual CSettingsComponent* operator[](std::string const& name);
    virtual void Add(CSettingsComponent* component);
    virtual void Remove(CSettingsComponent* component);
    // CSettingsComponent
    virtual std::string const& GetName() const = 0;
private:
    typedef std::map<std::string, CSettingsComponent*> ComponentsMap;
    ComponentsMap m_ComponentsMap;
};

CSettingsComposite::~CSettingsComposite()
{
    m_ComponentsMap.erase(m_ComponentsMap.begin(),m_ComponentsMap.end());
}

CSettingsComponent* CSettingsComposite::operator[](std::string const& name)
{
    ComponentsMap::iterator it = m_ComponentsMap.find(name);
    CSettingsComponent* Component = NULL;
    if(it != m_ComponentsMap.end())
    {
        Component = it->second;
    }

    return Component;
}

void CSettingsComposite::Add(CSettingsComponent* component)
{
    if(component)
    {
        std::string name(component->GetName());
        if(name.length() > 0)
        {
            int Return = m_ComponentsMap.erase(name);
            assert(!Return && "Component already existed. Replaced.");
            m_ComponentsMap[name] = component;
        }
    }
}

void CSettingsComposite::Remove(CSettingsComponent* component)
{
    if(component)
    {
        m_ComponentsMap.erase(component->GetName());
    }
}

// Deprecated.
class CPugi
{
public:
    //CPugiComponent(pugi::xml_node& element);
    //virtual ~CPugiComponent();
    virtual void SetXml(pugi::xml_node& element) = 0;
};

// Forward declarations.
class CVideo;

const char c_SettingsFileName[] = "settings.xml";

class CSettings : public CSettingsComposite
{
public:

    CSettings(char const* fileName = c_SettingsFileName);
    
public:

    virtual    std::string const&    GetName()  const;
    virtual    CVideo&               GetVideo() const;

private:
    boost::shared_ptr<CVideoImpl> m_pImpl;
};

CSettings::CSettings(char const* fileName) :
    m_pImpl(new CSettingsPugi(fileName))
{
}

class CSettingsImpl
{
public:
    virtual std::string const& GetName() const = 0;
    virtual CVideo& GetVideo() const = 0;
};

class CSettingsPugi : public CSettingsImpl
{
public:
    CSettingsPugi(char const* fileName);
    virtual ~CSettingsPugi();
    
public:
    virtual std::string const& GetName() const;
    virtual CVideo& GetVideo() const;
private:
    static const std::string m_SettingName;
    pugi::xml_document m_Document;
    char const* m_pFileName;
};

const std::string CSettingsPugi::m_SettingName("settings");

CSettingsPugi::CSettingsPugi(char const* fileName) :
    m_pFileName(fileName)
{
    assert(m_pFileName && "Invalid settings file name.");
    
    m_Document.load_file(m_pFileName);
}

CSettingsPugi::~CSettingsPugi()
{
    m_Document.save_file(m_pFileName);
}

// Forward declarations.
class CBPP;
class CHeight;
class CWeight;

class CVideo : public CSettingsComposite, boost::noncopyable
{
public:
    virtual ~CVideo();
    // CSettingsComponent
    virtual std::string const& GetName() const;
    // CVideo
    virtual CBPP& GetBPP() const = 0;
/*
    virtual CHeight const& GetHeight() const = 0;
    virtual CWidth const& GetWidth() const = 0;
*/
public:
    static std::string const& GetSettingName();
private:
    static const std::string m_SettingName;
};

const std::string CVideo::m_SettingName("video");

std::string const& CVideo::GetSettingName()
{
    return m_SettingName;
}

std::string const& CVideo::GetName() const
{
    return CVideo::m_SettingName;
}

#if 0 // can be implemented without impl. details.
CVideo::~CVideo()
{
}

class CVideoImpl
{
public:
    virtual CBPP& GetBPP() const = 0;
    /*
    virtual CHeight const& GetHeight() const;
    virtual CWidth const& GetWidth() const;
    */
};

class CVideoPugi : public CVideoImpl, public boost::noncopyable
{
public:
    CVideoPugi(pugi::xml_node& element);
    virtual ~CVideoPugi();
    // CVideo
    virtual CBPP& GetBPP() const;
    /*
    virtual CHeight const& GetHeight() const;
    virtual CWidth const& GetWidth() const;
    */
private:
    CBPP* m_pBPP;
    /*
    CHeight* m_Height;
    CWeight* m_Weight;  
    */
    pugi::xml_node* m_pXmlElement;
};

CVideoPugi::CVideoPugi(pugi::xml_node& element) :
    m_pBPP(NULL)
{
}

CVideoPugi::~CVideoPugi()
{
}

// Reference tells us that we will be given
// a valid object.
CBPP& CVideoPugi::GetBPP() const
{
    // TODO: Tutaj nie tworzymy obiektu czy tam w konstruktorze, tylko wylawiamy to z kolekcji componentow.
    
    // No NULL pointer check here.
    // NULL pointer here means the design failure.
    // Debug time bug fixing.
    assert(m_pBPP);
    return *m_pBPP;
}
#endif

class CBPPImpl
{
public:
    virtual int GetBPPValue() const = 0;
    virtual void SetBPPValue(int value) = 0;
};

class CBPP : public CSettingsComponent, boost::noncopyable
{
public:
    // CSettingsComponent
    virtual std::string const& GetName() const;
public:
    virtual int GetBPPValue() const;
    virtual void SetBPPValue(int value);
private:
    static const std::string m_SettingName;
    boost::shared_ptr<CBPPImpl> m_pImpl;
};

const std::string CBPP::m_SettingName("bpp");

std::string const& CBPP::GetName() const
{
    return CBPP::m_SettingName;
}

int CBPP::GetBPPValue() const
{
    return m_pImpl.get()->GetBPPValue();
}

void CBPP::SetBPPValue(int value)
{
    m_pImpl.get()->SetBPPValue(value);
}

/**
 *  CValuePugi
 *  Use this template for simple lexical conversions.
 */
template<class T>
class CValuePugi : boost::noncopyable
{
public:
    CValuePugi(pugi::xml_node& element) :
        m_pXmlElement(&element)
    {
    }
    
    // Can change at runtime.
    T const& GetValue()
    {
        // We convert from some kind of string
        // stored in an xml file to type T.
        pugi::char_t const* value = m_pXmlElement->child_value();
        m_Value = CUtils::Convert<T>(value);
        return m_Value;
    }

    void SetValue(T const& value)
    {
        // To store the value in an xml file
        // we must convert it to some kind of a string.
        m_Value = value;
        std::string temp = CUtils::Convert<std::string>(m_Value);
        m_pXmlElement->first_child().set_value(temp.c_str());
    }

private:
    T m_Value;
    pugi::xml_node* m_pXmlElement;
};

class CBPPPugi : public CBPPImpl, boost::noncopyable
{
public:
    CBPPPugi(pugi::xml_node& element) :
        m_pValue(new PugiValue_T(element)),
        m_BPP(0)
    {
    }
    virtual ~CBPPPugi();
    // CBPP
    virtual int GetBPPValue() const;
    virtual void SetBPPValue(int value);
private:
    typedef CValuePugi<int> PugiValue_T;
    PugiValue_T* m_pValue;
    int m_BPP;
};

CBPPPugi::~CBPPPugi()
{
    delete m_pValue;
}

int CBPPPugi::GetBPPValue() const
{
    return m_pValue->GetValue();
}

void CBPPPugi::SetBPPValue(int value)
{
    m_pValue->SetValue(value);
}


int main()
{
    return 0;
}
