#include "pugixml.hpp"
#include <iostream>
#include <cassert>

int main()
{
	assert(0);

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

	return 0;
}
