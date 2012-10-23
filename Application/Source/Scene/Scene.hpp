#ifndef AS_SCENE_SCENE_INCLUDE
	#define AS_SCENE_SCENE_INCLUDE

#include "Common/Common.hpp"
#include <boost/smart_ptr.hpp>
#include <list>
#include <map>
#include <vector>

namespace AS
{
	namespace Scene
	{
		class CSceneObjectId : public AS::Common::TValueType<int>
		{
		};

		class CSceneObject //3d model-mesh(what's the difference? - maybe model means model as a data?) + controller - controls position etc.
		{
		public:
			//Scene specific
				//-position
			std::vector<float> Position;
				//-polygons count
			//Mesh specific
				//-geometry
				//-materials
				//-textures
			//Geodata			
		};

		class CLayer
		{
		public:
			int Add(boost::shared_ptr<CSceneObject> sceneObject);
			void SetVisible(bool visible);
		private:
			std::map<int,boost::shared_ptr<CSceneObject> > m_Objects;
		};

		class CScene
		{
		public:
			boost::shared_ptr<CLayer> CreateNewLayer();
		private:
			std::list<boost::shared_ptr<CLayer> > m_Layers;
		};
	}
}

#endif // AS_SCENE_SCENE_INCLUDE