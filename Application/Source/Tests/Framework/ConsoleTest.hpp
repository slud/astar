/**
 *  Class header template version 3 - increases
 *  each time this template changes.
 * 
 *  @file name
 *  Brief description.
 *  Details description.
 */

// LICENSE

#ifndef AS_CONSOLE_TEST_INCLUDE
    #define AS_CONSOLE_TEST_INCLUDE

// INCLUDES

// 1. Corresponded header file
// 2. Necessary project headers
// 3. 3rd party libraries headers
#include <cppunit/extensions/HelperMacros.h>
// 4. Standard libraries headers
// 5. System headers

// MACROS

/**
 *  CExample
 *  Class description.
 *  Mind definitions:
 *  1. Constructor.
 *  2. Copy constructor.
 *  3. Virtual destructor.
 *  4. Assignment operator.
 */
class CConsoleTest : public CppUnit::TestFixture
{
	CPPUNIT_TEST_SUITE( CConsoleTest );
		CPPUNIT_TEST( test1 );
	CPPUNIT_TEST_SUITE_END();

public:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

	void setUp();
	void tearDown();

	void test1();

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

// INLINE METHODS

// TEMPLATE DEFINITIONS

// REFERENCES

#endif // AS_CONSOLE_TEST_INCLUDE




