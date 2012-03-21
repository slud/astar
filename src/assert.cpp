#include "assert.h" // "" makes it choose local file.

bool CustomAssertFunction(bool, char*, int, char*, bool*)
{
	return true;
}
