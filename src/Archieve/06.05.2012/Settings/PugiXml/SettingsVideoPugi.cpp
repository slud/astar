#include "SettingsVideoPugi.h"
#include <cstring>
#include "Utils.h"

const char c_BPP[] = "bpp";
const char c_Height[] = "height";
const char c_Width[] = "width";

CVideoPugi::CVideoPugi(pugi::xml_element& element) :
	m_BPP(0),
	m_Width(0),
	m_Height(0),
	m_pXmlElement(&element)
{
	// No sense. References are always initialised with an l-value object.
	assert(m_pXmlElement);
	
	char const* DefinedXmlName = CVideo::GetXmlName();
	char const* ReceivedXmlName = m_pXmlElement->name();
	
	int CompareResult = strcmp(DefinedXmlName, ReceivedXmlName);
	
	assert(CompareResult == 0);	
}

CVideoPugi::~CVideoPugi()
{
}

int CVideoPugi::GetBPP() const
{
	pugi::char_t const* BPP = GetXmlElement().child_value(c_BPP);
	
	int ConversionResult = CUtils::Convert<int>(*BPP);
	
	return ConversionResult;	
}
