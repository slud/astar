#include "Application/Application.hpp"

#include "Framework/Assert.hpp"

#include <iostream>
#include <fstream>
#include <windows.h>

int main(int argc, char *argv[])
{
	//CApplication application;

	int result = -1;
	//result = application.Start(argc, argv);

	result = 0;
	try {
	std::ofstream out("BUZIA.txt", std::ios::app );
	if( !out.is_open() )
		throw new std::exception( "no i zamkniety bobas" );
	out << "No to hello..." << std::endl;
	out.close();
	}
	catch(...)
	{
		MessageBox(0, (LPCWSTR)L"Wszystko OK", (LPCWSTR)L"Ekran SDL", MB_OK);
	}
	//TRACE("tera ju dziala dobrze. Jeden param");
	//TRACE("multi" << " trace" << "with number: " << 55555);
	//ASSERT(0, "assercik polecial");

	return result;

}
