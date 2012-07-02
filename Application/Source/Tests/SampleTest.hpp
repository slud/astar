/**
 *  Class header template version 3 - increases
 *  each time this template changes.
 * 
 *  @file name
 *  Brief description.
 *  Details description.
 */

// LICENSE

#ifndef AS_SAMPLE_TEST_INCLUDE
    #define AS_SAMPLE_TEST_INCLUDE

// INCLUDES

// 1. Corresponded header file
// 2. Necessary project headers
#include "Libraries/cppunit-1.12.1/
// 3. 3rd party libraries headers
// 4. Standard libraries headers
#include <string>
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
class CSampleTest : public CppUnit::TestCase
{
public:

// TYPES

// LIFECYCLE

	CSampleTest( std::string const& name ) : CppUnit::TestCase( name ) {}

// OPERATORS

// METHODS

	void RunTest()
	{
		CPPUNIT_ASSERT( int(1) == int(1) );
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

// OPERATORS

// METHODS

// DATA

};

// INLINE METHODS

// TEMPLATE DEFINITIONS

// REFERENCES

#endif // AS_SAMPLE_TEST_INCLUDE




