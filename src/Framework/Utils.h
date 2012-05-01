/**
 *  @file name
 *  Brief description.
 *  Details description.
 */

// LICENSE

#ifndef AS_UTILS_H
	#define AS_UTILS_H

// INCLUDES

#include <boost/lexical_cast.hpp>


/**
 *	CUtils
 * 
 * 	Tools for various tasks.
 */
class CUtils
{
public:

// METHODS

	template<class To, class From>
	static To Convert(From const& data);

};

// TEMPLATE DEFINITIONS

template<class To, class From>
To Convert(From const& data)
{
	try
	{
		return boost::lexical_cast<To>(data);
	}
	catch(boost::bad_lexical_cast &)
	{
		// In case of a failure return default value.
		return To();
	}	
}

// REFERENCES

#endif // AS_UTILS_H




