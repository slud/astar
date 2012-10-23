#ifndef AS_FRAMEWORK_MATH_TEST_INCLUDE
    #define AS_FRAMEWORK_MATH_TEST_INCLUDE

#include <cppunit/extensions/HelperMacros.h>

namespace AS
{
	namespace Math
	{
		class CVectorTest : public CppUnit::TestFixture
		{
			CPPUNIT_TEST_SUITE( CVectorTest );
				CPPUNIT_TEST( Test0 );
				CPPUNIT_TEST( TestAddTwoVectors );
				CPPUNIT_TEST( TestConversionToArray );
				CPPUNIT_TEST( TestCopyConstructor );
				CPPUNIT_TEST( TestDefaultConstructors );
				CPPUNIT_TEST( TestParametrizedConstructors );
				CPPUNIT_TEST( TestSubstractTwoVectors );
			CPPUNIT_TEST_SUITE_END();
		public:
			void setUp();
			void tearDown();
			void Test0();
			void TestAddTwoVectors();
			void TestConversionToArray(); // Compile time test.
			void TestCopyConstructor();
			void TestDefaultConstructors();
			void TestParametrizedConstructors();
			void TestSubstractTwoVectors();
		};
	}
}

#endif // AS_FRAMEWORK_MATH_TEST_INCLUDE




