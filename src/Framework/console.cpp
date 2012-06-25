#include "console.h"
#include <iostream>
#include <cassert>

void CConsole::Transmit(const char* text, EMessageType messageType)
{
	assert(text && "Null pointer.");

	if(text)
	{
		switch(messageType)
		{
			case e_Error:
					std::cerr << text << std::endl;
				break;
			case e_Info:
					std::cout << text << std::endl;
				break;
			case e_Warning:
					std::cout << text << std::endl;
				break;
			default:
				assert(0 && "Wrong output type.");
		}
	}
}
