#include "../IndexedComposite.hpp"

#include <iostream>
#include <string>

class CXmlNode : public CIndexedComponent<CXmlNode>
{
public:

    CXmlNode() {}
    
    virtual std::string const& GetName() const = 0;

};


class CXmlElem : public CIndexedComposite<CXmlNode>
{
public:
    CXmlElem(std::string const& name)
    {
    }
    
    virtual std::string const& GetName() const
    {
        return m_Name;
    }
    
private:
    std::string m_Name;
};

int main()
{
    CXmlElem settings("settings");
    settings.Add(*(new CXmlElem("audio")));
    settings.Add(*(new CXmlElem("video")));
    settings.Add(*(new CXmlElem("multiplayer")));

    std::cout << settings["multiplayer"].GetName() << std::endl;
    std::cout << settings["audio"].GetName() << std::endl;
    std::cout << settings["video"].GetName() << std::endl;

    return 0;
}
