#ifndef AS_MEDIA_LAYER_INCLUDE
    #define AS_MEDIA_LAYER_INCLUDE

#include "Framework/ASSDL.hpp"
#include <boost/function.hpp>
#include <vector>

namespace AS
{
	namespace System
	{
		class CMediaLayer
		{
		public:
			typedef boost::function<void (Event_T const&)> SystemEventEventHandler;
			CMediaLayer();
			virtual ~CMediaLayer();
			virtual void Events();
			virtual void RegisterEventHandler(SystemEventEventHandler event);
			virtual void Attach();
		private:
			CMediaLayer(CMediaLayer const&);
			CMediaLayer& operator=(CMediaLayer const&);
			std::vector<SystemEventEventHandler> m_EventHandlers;
		};
	} // ns System
} // ns AS

#endif // AS_MEDIA_LAYER_INCLUDE




