#include "ColladaLoader.hpp"
#include "Libraries/pugixml-1.0/pugixml.hpp"
#include <string>

void AS::Resources::CColladaFile::Load(const char *file)
{
	std::string File(file);
	/*
	pugi::xml_document doc;
	doc.load_file("settings.xml");
	pugi::xpath_node_set tools = doc.select_nodes("/settings/video/*");

	std::cout << "video:" << std::endl;

	for(pugi::xpath_node_set::const_iterator it = tools.begin(); it != tools.end(); ++it)
	{
    	pugi::xpath_node node = *it;
	    //std::cout << node.node().name() << std::endl; //.child_value("width");
		node.node().first_child().set_value("444");
	}

	doc.save_file("snew.xml");
	*/
	pugi::xml_document Doc;
	Doc.load_file(file);
}
