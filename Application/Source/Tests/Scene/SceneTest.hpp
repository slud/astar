#ifndef AS_SCENE_SCENE_TEST_INCLUDE
    #define AS_SCENE_SCENE_TEST_INCLUDE

#include <cppunit/extensions/HelperMacros.h>

namespace AS
{
	namespace Scene
	{
		class CSceneTest : public CppUnit::TestFixture
		{
			CPPUNIT_TEST_SUITE( CSceneTest );
				CPPUNIT_TEST( Test0 );
			CPPUNIT_TEST_SUITE_END();
		public:
			void setUp();
			void tearDown();
			void Test0();
		};
	}
}

#endif // AS_SCENE_SCENE_TEST_INCLUDE




