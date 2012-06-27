#include "Application/Application.hpp"

#include "Framework/Assert.hpp"

#include <iostream>

int main(int argc, char *argv[])
{
	//CApplication application;

	int result = -1;
	//result = application.Start(argc, argv);

	result = 0;
	TRACE("tera ju dziala dobrze. Jeden param");
	TRACE("multi" << " trace" << "with number: " << 55555);
	ASSERT(0, "assercik polecial");

	return result;

}
