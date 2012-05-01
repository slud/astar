/**
 *  @file Component.h
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_COMPONENT_H
	#define AS_COMPONENT_H

// INCLUDES

#include <string>

/**
 *	Class description.
 */
template<class T, class Index = std::string>
class CComponent
{
public:

// TYPES

// LIFECYCLE

// OPERATORS

	/**
	 *  Access through a index operator.
	 *  @return A child with a given name.
	 */
	virtual T* operator[](Index const& accessor) = 0;

// METHODS

// DATA

protected:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

	/**
	 *  Add a child.
	 */
	virtual void Add(T*) = 0;

	/**
	 *  Remove a child.
	 */
	virtual void Remove(T*) = 0;

// DATA

private:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

// DATA

};

// REFERENCES

#endif // AS_COMPONENT_H




