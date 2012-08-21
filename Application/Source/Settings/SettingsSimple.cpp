#include "SettingsSimple.hpp"
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/xml_parser.hpp>

void AS::Settings::CSettingsSimple::Load()
{
	boost::property_tree::ptree PropertyTree;
	boost::property_tree::xml_parser::read_xml("Settings.xml", PropertyTree);
	Scene.DefaultTargetCamera.EyeX = PropertyTree.get("Settings.Scene.DefaultTargetCamera.EyeX", 10.0);
	Scene.DefaultTargetCamera.EyeY = PropertyTree.get("Settings.Scene.DefaultTargetCamera.EyeY", 10.0);
	Scene.DefaultTargetCamera.EyeZ = PropertyTree.get("Settings.Scene.DefaultTargetCamera.EyeZ", 10.0);
	Scene.DefaultTargetCamera.CenterX = PropertyTree.get("Settings.Scene.DefaultTargetCamera.CenterX", 0.0);
	Scene.DefaultTargetCamera.CenterY = PropertyTree.get("Settings.Scene.DefaultTargetCamera.CenterY", 0.0);
	Scene.DefaultTargetCamera.CenterZ = PropertyTree.get("Settings.Scene.DefaultTargetCamera.CenterZ", 0.0);
	Scene.DefaultTargetCamera.UpX = PropertyTree.get("Settings.Scene.DefaultTargetCamera.UpX", 0.0);
	Scene.DefaultTargetCamera.UpY = PropertyTree.get("Settings.Scene.DefaultTargetCamera.UpY", 1.0);
	Scene.DefaultTargetCamera.UpZ = PropertyTree.get("Settings.Scene.DefaultTargetCamera.UpZ", 0.0);
	Scene.TargetCamera.EyeX = PropertyTree.get("Settings.Scene.TargetCamera.EyeX", 10.0);
	Scene.TargetCamera.EyeY = PropertyTree.get("Settings.Scene.TargetCamera.EyeY", 10.0);
	Scene.TargetCamera.EyeZ = PropertyTree.get("Settings.Scene.TargetCamera.EyeZ", 10.0);
	Scene.TargetCamera.CenterX = PropertyTree.get("Settings.Scene.TargetCamera.CenterX", 0.0);
	Scene.TargetCamera.CenterY = PropertyTree.get("Settings.Scene.TargetCamera.CenterY", 0.0);
	Scene.TargetCamera.CenterZ = PropertyTree.get("Settings.Scene.TargetCamera.CenterZ", 0.0);
	Scene.TargetCamera.UpX = PropertyTree.get("Settings.Scene.TargetCamera.UpX", 0.0);
	Scene.TargetCamera.UpY = PropertyTree.get("Settings.Scene.TargetCamera.UpY", 1.0);
	Scene.TargetCamera.UpZ = PropertyTree.get("Settings.Scene.TargetCamera.UpZ", 0.0);
	Video.BPP = PropertyTree.get("Settings.Video.BPP", 32);
	Video.Height = PropertyTree.get("Settings.Video.Height", 450);
	Video.Width = PropertyTree.get("Settings.Video.Width", 800);

}

void AS::Settings::CSettingsSimple::Save()
{
	boost::property_tree::ptree PropertyTree;
	PropertyTree.put("Settings.Video.BPP", Video.BPP);
	PropertyTree.put("Settings.Video.Height", Video.Height);
	PropertyTree.put("Settings.Video.Width", Video.Width);
	CTargetCamera* pTargetCamera = &Scene.TargetCamera;
	PropertyTree.put("Settings.Scene.TargetCamera.EyeX", pTargetCamera->EyeX);
	PropertyTree.put("Settings.Scene.TargetCamera.EyeY", pTargetCamera->EyeY);
	PropertyTree.put("Settings.Scene.TargetCamera.EyeZ", pTargetCamera->EyeZ);
	PropertyTree.put("Settings.Scene.TargetCamera.CenterX", pTargetCamera->CenterX);
	PropertyTree.put("Settings.Scene.TargetCamera.CenterY", pTargetCamera->CenterY);
	PropertyTree.put("Settings.Scene.TargetCamera.CenterZ", pTargetCamera->CenterZ);
	PropertyTree.put("Settings.Scene.TargetCamera.UpX", pTargetCamera->UpX);
	PropertyTree.put("Settings.Scene.TargetCamera.UpY", pTargetCamera->UpY);
	PropertyTree.put("Settings.Scene.TargetCamera.UpZ", pTargetCamera->UpZ);
	pTargetCamera = &Scene.DefaultTargetCamera;
	PropertyTree.put("Settings.Scene.DefaultTargetCamera.EyeX", pTargetCamera->EyeX);
	PropertyTree.put("Settings.Scene.DefaultTargetCamera.EyeY", pTargetCamera->EyeY);
	PropertyTree.put("Settings.Scene.DefaultTargetCamera.EyeZ", pTargetCamera->EyeZ);
	PropertyTree.put("Settings.Scene.DefaultTargetCamera.CenterX", pTargetCamera->CenterX);
	PropertyTree.put("Settings.Scene.DefaultTargetCamera.CenterY", pTargetCamera->CenterY);
	PropertyTree.put("Settings.Scene.DefaultTargetCamera.CenterZ", pTargetCamera->CenterZ);
	PropertyTree.put("Settings.Scene.DefaultTargetCamera.UpX", pTargetCamera->UpX);
	PropertyTree.put("Settings.Scene.DefaultTargetCamera.UpY", pTargetCamera->UpY);
	PropertyTree.put("Settings.Scene.DefaultTargetCamera.UpZ", pTargetCamera->UpZ);
	boost::property_tree::xml_parser::write_xml("Settings.xml", PropertyTree);
}