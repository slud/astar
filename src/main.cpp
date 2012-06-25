#include "Application/Application.hpp"

#include <iostream>

int main(int argc, char *argv[])
{
	CApplication application;

	// It end when user hits Esc key
	// or closes the window.
	// hits - press down and up Esc key.
	// closes - clicks on the "close" button at the right upper corner of a window. 
	return application.Start(argc, argv);
	
}
