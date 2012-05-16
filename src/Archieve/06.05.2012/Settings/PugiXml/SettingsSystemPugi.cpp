#include "SettingsSystemPugi.h"
#include <cassert>

const char c_SettingsFileName[] = "settings.xml";

CSettingsSystemPugiSingleton::CSettingsSystemPugiSingleton() :
	m_pDoc(new pugi::xml_document)
{
#if 0
	for(pugi::xpath_node_set::const_iterator it = tools.begin(); it != tools.end(); ++it)
	{
    	pugi::xpath_node node = *it;
	    //std::cout << node.node().name() << std::endl; //.child_value("width");
		node.node().first_child().set_value("444");
	}
#endif
}

CSettingsSystemPugiSingleton::~CSettingsSystemPugiSingleton()
{
	delete m_pDoc;
	m_pDoc = NULL;
}

CSettingsSystemPugiSingleton::EResult CSettingsSystemPugiSingleton::Read(char const* FileName)
{
	assert(FileName);
	
	if(NULL != FileName)
	{
		m_pDoc->load_file(FileName);
	}
}

CSettingsSystemPugiSingleton::EResult CSettingsSystemPugiSingleton::Write(char const* FileName)
{
	assert(FileName);
	
	if(NULL != FileName)
	{
		m_pDoc->save_file(FileName);
	}
}
