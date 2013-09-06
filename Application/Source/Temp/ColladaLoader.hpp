#ifndef AS_RESOURCES_COLLADA_LOADER_INCLUDED
	#define AS_RESOURCES_COLLADA_LOADER_INCLUDED

namespace AS
{
	namespace Resources
	{
		class CColladaFile
		{
		public:
			virtual void Load(char const* file);
		};
	}
}

#endif // AS_RESOURCES_COLLADA_LOADER_INCLUDED