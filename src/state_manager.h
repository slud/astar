#ifndef AS_STATE_MANAGER_H
	#define AS_STATE_MANAGER_H

/**
 *  @file name
 *
 *  Some description.
 */

// INCLUDES
// [SO1]
#include <boost/bind.hpp>
#include <boost/function.hpp>
#include <boost/utility.hpp>
#include "SDL.h"

/**
 *  CStateManager class.
 *  Is it some kind of a Mediator design pattern?
 *
 */
class CStateManager : public boost::noncopyable
{
public:

// TYPES

// LIFECYCLE
	CStateManager();

// OPERATORS

// METHODS

// DATA

	// TODO: Replace with [CP1]
	boost::function<void(SDL_Event *event)> EventHandler;

protected:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

// DATA

private:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

// DATA

};

// REFERENCES
// [SO1] stackoverflow how boost::function and boost::bind work - http://stackoverflow.com/questions/527413/how-boostfunction-and-boostbind-work
// [CP1] THE CODE PROJECT, Member Function Pointers and the Fastest Possible C++ Delegates By Don Clugston. http://www.codeproject.com/Articles/7150/Member-Function-Pointers-and-the-Fastest-Possible


#endif // AS_STATE_MANAGER_H
