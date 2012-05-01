#include <map>
#include <cassert>
#include <string>
#include <boost/utility.hpp>
#include <boost/shared_ptr.hpp>
#include "pugixml.hpp"
#include "Component.h"
#include "Utils.h"

#define nullptr 0

class CGenericComponent : public CComponent<CGenericComponent>
{
public:
};

class CGenericComposite : public CGenericComponent
{
public:
};

int main()
{
	return 0;
}
