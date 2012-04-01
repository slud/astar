#include <iostream>

#include "app.h"


int main(int argc, char *argv[])
{
	CApplicationSingleton::Instance().Start();
	
	return 0;
}
