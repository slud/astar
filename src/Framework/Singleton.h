/**
 *  @file Singleton.h
 *	Singleton design pattern template base class.
 */

// LICENSE

#ifndef AS_SINGLETON_H
	#define AS_SINGLETON_H

// INCLUDES


/**
 *	CSingleton.
 */
template< class T >
class CSingleton
{
public:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

	static T& GetInstance()
	{
		T Instance;
		return T;
	}

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

	/**
	 *  Non-public constructor.
	 */
	T();

	/**
	 *  Non-public destructor.
	 */
	virtual ~T();

	/**
	 *  Non-public copy constructor.
	 */
	T(T const&);

// OPERATORS

	/**
	 *  Non-public assignment operator.
	 */
	T& operator=(T const&);

// METHODS

// DATA

};

// REFERENCES

// [YL1] YoLinux.com - C++ Singleton design pattern http://www.yolinux.com/TUTORIALS/C++Singleton.html
// [PN1] Peter Nordlund - An Exception Correct C++ Singleton Template Base Class with Controlled Destruction Order http://www.nada.kth.se/cvap/abstracts/cvap246.html

#endif // AS_NAME_H




