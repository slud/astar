#ifndef AS_STATE_MANAGER_H
	#define AS_STATE_MANAGER_H

// LICENSE

/**
 *  @file name
 *
 *  Some description.
 */

// INCLUDES
// [SO1]
#include <boost/function.hpp>
#include <boost/utility.hpp>
#include "app.h"

/**
 * CStateManager class.
 * Is it some kind of a Mediator design pattern?
 *
 */
class CApplicationStateManagerSingleton : public boost::noncopyable
{
public:

// TYPES
	enum EState
	{
		e_MainWindow,
		e_MainMenu,
		e_Edit,
		e_Playing,
		e_Paused,
		e_Quit,
		e_Undefined
	};

// LIFECYCLE

// OPERATORS

// METHODS

	EState GetCurrentState() const;

	static CApplicationStateManagerSingleton& Instance()
	{
		static CApplicationStateManagerSingleton Instance;
		return Instance;
	}

	void RequestStateChange(EState NewState);

// DATA

	// TODO: Replace with [CP1]
	//boost::function<void()> EventHandlerDelegate;

protected:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

// DATA

private:

// TYPES

// LIFECYCLE

	CApplicationStateManagerSingleton();
	~CApplicationStateManagerSingleton();

// OPERATORS

// METHODS

// DATA

	EState m_eCurrentState;

};

// REFERENCES
// [SO1] stackoverflow how boost::function and boost::bind work - http://stackoverflow.com/questions/527413/how-boostfunction-and-boostbind-work
// [CP1] THE CODE PROJECT, Member Function Pointers and the Fastest Possible C++ Delegates By Don Clugston. http://www.codeproject.com/Articles/7150/Member-Function-Pointers-and-the-Fastest-Possible


#endif // AS_STATE_MANAGER_H
