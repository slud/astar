/**
 *  @file name
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_SETTINGS_COMPOSITE_H
	#define AS_SETTINGS_COMPOSITE_H

// INCLUDES

#include "SettingsComponent.h"


/**
 *	CSettingsComposite
 *  A base class for component based hierarchy.
 */
class CSettingsComposite : public CSettingsComponent
{
public:

// TYPES

// LIFECYCLE

// OPERATORS

	CSettingsComponent& operator[](char const* child);

// METHODS

	/**
	 *  Just to know who I am.
	 */
	static void IM_A_COMPOSITE() {};

// DATA

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

#endif // AS_SETTINGS_COMPOSITE_H




