#ifndef AS_CONSOLE_H
	#define AS_CONSOLE_H

// INCLUDES

#include <vector>
#include <boost/utility.hpp>
#include "Singleton.h"

class CConsole : public CSingleton<CConsole>
{
public:

// TYPES

	/**
	 *  Message type.
	 *  It is not an output direction.
	 */
	enum EMessageType
	{
		e_Error,
		e_Info,
		e_Warning
	};

// METHODS

	void Transmit(const char* text, EMessageType messageType = e_Info);

};


#endif
