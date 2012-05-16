#include <map>
#include <cassert>
#include <string>
#include <boost/utility.hpp>
#include <boost/shared_ptr.hpp>
#include "pugixml.hpp"
#include "Component.h"
#include "Utils.h"

#define nullptr 0

class CSettingsComponent : public CComponent<CSettingsComponent>
{
public:

		virtual ~CSettingsComponent();
		
		// CComponent<T>
		virtual CSettingsComponent* operator[](std::string const& name);
		
		virtual void Add(CSettingsComponent*);
		
		virtual void Remove(CSettingsComponent*);
		
		// CSettingsComponent
		virtual std::string const& GetName() const = 0;
		
private:

		static const std::string m_EmptyString;	
};

int main()
{
	return 0;
}
