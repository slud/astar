#ifndef AS_SYSTEM_SETTINGS_SIMPLE_INCLUDE
	#define AS_SYSTEM_SETTINGS_SIMPLE_INCLUDE

#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/xml_parser.hpp>
#include <boost/utility.hpp>

namespace AS
{
	namespace System
	{
		struct SVideo
		{
			int bpp;
			int height;
			int width;
		};

		struct SChainedCamera
		{
			double eyex;
			double eyey;
			double eyez;
			double centerx; 
			double centery;
			double centerz;
			double upx;
			double upy;
			double upz;
		};

		struct SScene
		{
			SChainedCamera ChainedCamera;
			SChainedCamera DefaultChainedCamera;
		};

		class CSettingsSimple
		{
		public:
			SScene Scene;
			SVideo Video;
			void Load()
			{
				boost::property_tree::ptree PropertyTree;
				boost::property_tree::xml_parser::read_xml("Settings.xml", PropertyTree);
				Scene.DefaultChainedCamera.eyex = PropertyTree.get("settings.scene.default_chained_camera.eyex", 10.0);
				Scene.DefaultChainedCamera.eyey = PropertyTree.get("settings.scene.default_chained_camera.eyey", 10.0);
				Scene.DefaultChainedCamera.eyez = PropertyTree.get("settings.scene.default_chained_camera.eyez", 10.0);
				Scene.DefaultChainedCamera.centerx = PropertyTree.get("settings.scene.default_chained_camera.centerx", 0.0);
				Scene.DefaultChainedCamera.centery = PropertyTree.get("settings.scene.default_chained_camera.centery", 0.0);
				Scene.DefaultChainedCamera.centerz = PropertyTree.get("settings.scene.default_chained_camera.centerz", 0.0);
				Scene.DefaultChainedCamera.upx = PropertyTree.get("settings.scene.default_chained_camera.upx", 0.0);
				Scene.DefaultChainedCamera.upy = PropertyTree.get("settings.scene.default_chained_camera.upy", 1.0);
				Scene.DefaultChainedCamera.upz = PropertyTree.get("settings.scene.default_chained_camera.upz", 0.0);
				Scene.ChainedCamera.eyex = PropertyTree.get("settings.scene.chained_camera.eyex", 10.0);
				Scene.ChainedCamera.eyey = PropertyTree.get("settings.scene.chained_camera.eyey", 10.0);
				Scene.ChainedCamera.eyez = PropertyTree.get("settings.scene.chained_camera.eyez", 10.0);
				Scene.ChainedCamera.centerx = PropertyTree.get("settings.scene.chained_camera.centerx", 0.0);
				Scene.ChainedCamera.centery = PropertyTree.get("settings.scene.chained_camera.centery", 0.0);
				Scene.ChainedCamera.centerz = PropertyTree.get("settings.scene.chained_camera.centerz", 0.0);
				Scene.ChainedCamera.upx = PropertyTree.get("settings.scene.chained_camera.upx", 0.0);
				Scene.ChainedCamera.upy = PropertyTree.get("settings.scene.chained_camera.upy", 1.0);
				Scene.ChainedCamera.upz = PropertyTree.get("settings.scene.chained_camera.upz", 0.0);
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

				SChainedCamera* ccam = &Scene.ChainedCamera;
				PropertyTree.put("settings.scene.chained_camera.eyex", ccam->eyex);
				PropertyTree.put("settings.scene.chained_camera.eyey", ccam->eyey);
				PropertyTree.put("settings.scene.chained_camera.eyez", ccam->eyez);
				PropertyTree.put("settings.scene.chained_camera.centerx", ccam->centerx);
				PropertyTree.put("settings.scene.chained_camera.centery", ccam->centery);
				PropertyTree.put("settings.scene.chained_camera.centerz", ccam->centerz);
				PropertyTree.put("settings.scene.chained_camera.upx", ccam->upx);
				PropertyTree.put("settings.scene.chained_camera.upy", ccam->upy);
				PropertyTree.put("settings.scene.chained_camera.upz", ccam->upz);
				ccam = &Scene.DefaultChainedCamera;
				PropertyTree.put("settings.scene.default_chained_camera.eyex", ccam->eyex);
				PropertyTree.put("settings.scene.default_chained_camera.eyey", ccam->eyey);
				PropertyTree.put("settings.scene.default_chained_camera.eyez", ccam->eyez);
				PropertyTree.put("settings.scene.default_chained_camera.centerx", ccam->centerx);
				PropertyTree.put("settings.scene.default_chained_camera.centery", ccam->centery);
				PropertyTree.put("settings.scene.default_chained_camera.centerz", ccam->centerz);
				PropertyTree.put("settings.scene.default_chained_camera.upx", ccam->upx);
				PropertyTree.put("settings.scene.default_chained_camera.upy", ccam->upy);
				PropertyTree.put("settings.scene.default_chained_camera.upz", ccam->upz);
				boost::property_tree::xml_parser::write_xml("Settings.xml", PropertyTree);
			}
		};
	}
}

#endif // AS_SYSTEM_SETTINGS_SIMPLE_INCLUDE