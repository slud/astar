#include "Settings/SettingsSimple.hpp"
#include "Application/Application.hpp"
#include <fstream>

int main(int argc, char *argv[])
{
	int result = -1;
	try
	{
		AS::Settings::Settings.Load();
		CApplication application;
		result = application.Start(argc, argv);
		AS::Settings::Settings.Save();
	}
	catch(std::exception const& e)
	{
		std::ofstream error("ERROR.TXT", std::ios::out, std::ios::app);
		if( error.is_open() )
			error << "An exception has been thrown:" << "\n" << e.what() << "\n";
	}
	catch(...)
	{
		std::ofstream error("ERROR.TXT", std::ios::out, std::ios::app);
		if( error.is_open() )
			error << "An exception has been thrown." << "\n";
	}
	return result;
}
