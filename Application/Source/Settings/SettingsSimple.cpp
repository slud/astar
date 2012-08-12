#include "SettingsSimple.hpp"
#include <string>

void AS::Configuration::CSettings::ReadVideo()
{
	// "/settings/video/"
	std::string Path(c_XmlPathSeparator);
	Path += c_SettingsElement;
	Path += c_XmlPathSeparator;
	Path += c_VideoElement;
	Path += c_XmlPathSeparator;

	std::string BPPPath(Path);
	BPPPath += (c_BPPElement);
	pugi::xpath_node BPPNode = m_XmlDocument.select_single_node(BPPPath);
	

	for(pugi::xpath_node_set::const_iterator it = video.begin(); it != video.end(); ++it)
	{
		pugi::xpath_node node = *it;
		//std::cout << node.node().name() << std::endl; //.child_value("width");
		//node.node().first_child().set_value("444");
	}
}