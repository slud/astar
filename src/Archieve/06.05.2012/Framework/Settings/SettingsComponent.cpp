#include "Framework/Settings/SettingsComponent.hpp"
#include <cassert>


const std::string CSettingsComponent::m_EmptyString("");

CSettingsComponent::CSettingsComponent()
{
}

CSettingsComponent::~CSettingsComponent()
{
}

CSettingsComponent::CSettingsComponent(CSettingsComponent const&)
{
}

CSettingsComponent& CSettingsComponent::operator=(CSettingsComponent const&)
{
}

CSettingsComponent& CSettingsComponent::operator[](std::string const& name)
{
    assert(0 && "Invalid operation.");
    // To let it compile.
    return *this;
}

void CSettingsComponent::Add(CSettingsComponent&)
{
    assert(0 && "Invalid operation.");
}

void CSettingsComponent::Remove(CSettingsComponent&)
{
    assert(0 && "Invalid operation.");
}

std::string const& CSettingsComponent::GetName() const
{
    assert(0 && "Invalid operation");
    return m_EmptyString;
}
