#ifndef AS_MESHES_MESH_TEST_INCLUDE
    #define AS_MESHES_MESH_TEST_INCLUDE

#include <cppunit/extensions/HelperMacros.h>

namespace AS
{
	namespace Meshes
	{
		class CMeshTest : public CppUnit::TestFixture
		{
			CPPUNIT_TEST_SUITE( CMeshTest );
				CPPUNIT_TEST( Test0 );
			CPPUNIT_TEST_SUITE_END();
		public:
			void setUp();
			void tearDown();
			void Test0();
		};
	}
}

#endif // AS_MESHES_MESH_TEST_INCLUDE




