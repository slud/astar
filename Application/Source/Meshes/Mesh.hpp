#ifndef AS_MESHES_MESH_INCLUDE
	#define AS_MESHES_MESH_INCLUDE

#include <boost/smart_ptr.hpp>

namespace AS
{
	namespace Meshes
	{

		class CMesh
		{
		public:
			boost::shared_ptr<std::vector<int> > Indices;
			boost::shared_ptr<std::vector<float> > Normals;
			boost::shared_ptr<std::vector<float> > Vertices;
			boost::shared_ptr<std::vector<float> > TextureCoordinates;
		};
	}
}

#endif // AS_MESHES_MESH_INCLUDE