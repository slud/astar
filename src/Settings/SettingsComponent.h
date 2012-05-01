/**
 *  @file name
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_SETTINGS_COMPONENT_H
	#define AS_SETTINGS_COMPONENT_H

// INCLUDES

#include "Component.h"

// For the simplicity sake I considered it is an xml component.

/**
 *	Class description.
 */
template<class T>
class CSettingsComponent : public CComponent<CSettingsComponent, char const*>
{
public:

// TYPES

// LIFECYCLE

// OPERATORS

	CSettingsComponent& operator[](char const* child);

// METHODS

	T const& GetValue() const;
	
	void SetValue(T const& value);

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

#endif // AS_SETTINGS_COMPONENT_H




