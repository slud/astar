#ifndef AS_SYSTEM_SETTINGS_SIMPLE_INCLUDE
	#define AS_SYSTEM_SETTINGS_SIMPLE_INCLUDE

#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/xml_parser.hpp>
#include <boost/utility.hpp>

namespace AS
{
	namespace System
	{
		class CVideo
		{
		public:
			int bpp;
			int height;
			int width;
		};

		class CSettingsSimple
		{
		public:
			CVideo Video;
			void Load()
			{
				boost::property_tree::ptree PropertyTree;
				boost::property_tree::xml_parser::read_xml("Settings.xml", PropertyTree);
				Video.bpp = PropertyTree.get("settings.video.bpp", 32);
				Video.height = PropertyTree.get("settings.video.height", 450);
				Video.width = PropertyTree.get("settings.video.width", 800);
			}
			void Save()
			{
				boost::property_tree::ptree PropertyTree;
				PropertyTree.put("settings.video.bpp", Video.bpp);
				PropertyTree.put("settings.video.height", Video.height);
				PropertyTree.put("settings.video.width", Video.width);
				boost::property_tree::xml_parser::write_xml("Settings.xml", PropertyTree);
			}
		};
	}
}

#endif // AS_SYSTEM_SETTINGS_SIMPLE_INCLUDE