#include "Console.h"

#include <iostream>
#include <cassert>

CConsoleSingleton* CConsoleSingleton::m_pInstance = NULL;

void CConsoleSingleton::Transmit(EOutput out, const char* text)
{
	// TODO: Add mem leaks checks.
	switch(out)
	{
		case e_cerr:
				std::cerr << text << std::endl;
			break;
		case e_cout:
				std::cout << text << std::endl;
			break;
		case e_clog:
				std::clog << text << std::endl;
			break;
		default:
			assert( 0 && "Wrong output type." );
	}

}

void CConsoleSingleton::Transmit(EOutput out, const char* tab[], int count)
{
	switch(out)
	{
		case e_cerr:
			for(int i=0; i<count; i++)
				std::cerr << tab[i] << std::endl;
			break;
		case e_cout:
			for(int i=0; i<count; i++)
				std::cout << tab[i] << std::endl;
			break;
		case e_clog:
			for(int i=0; i<count; i++)
				std::clog << tab[i] << std::endl;
			break;
		default:
			assert( 0 && "Wrong output type." );
	}
}

void CConsoleSingleton::Transmit(EOutput out, std::vector<const char*> const& col)
{
	std::vector<const char*>::const_iterator it;

	switch(out)
	{
		case e_cerr:
			for(it=col.begin(); it<col.end(); it++)
				std::cerr << *it << std::endl;
			break;
		case e_cout:
			for(it=col.begin(); it<col.end(); it++)
				std::cout << *it << std::endl;
			break;
		case e_clog:
			for(it=col.begin(); it<col.end(); it++)
				std::cout << *it << std::endl;
			break;
		default:
			assert( 0 && "Wrong output type." );
	}
}
