#include "Application/Application.hpp"

//#include "Framework/Assert.hpp"

#include <fstream>


int main(int argc, char *argv[])
{
	int result = -1;

	try
	{
		CApplication application;
		result = application.Start(argc, argv);
	}
	catch(...)
	{
		std::ofstream error("ERROR.TXT");
		if( error.is_open() )
			error << "An exception has been thrown." << "\n";
	}

	return result;

}
