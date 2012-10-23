#ifndef AS_COMMON_VALUE_TYPE_TEST_INCLUDE
    #define AS_COMMON_VALUE_TYPE_TEST_INCLUDE

#include <cppunit/extensions/HelperMacros.h>

namespace AS
{
	namespace Common
	{
		class CValueTypeTest : public CppUnit::TestFixture
		{
			CPPUNIT_TEST_SUITE( CValueTypeTest );
				CPPUNIT_TEST( TestCanBeInt );
			CPPUNIT_TEST_SUITE_END();
		public:
			void setUp();
			void tearDown();
			void TestCanBeInt();
		};
	}
}

#endif // AS_COMMON_VALUE_TYPE_TEST_INCLUDE




