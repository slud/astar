#include "SettingsComposite.hpp"

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
