#ifndef AS_APPLICATION_INCLUDE
    #define AS_APPLICATION_INCLUDE

#include "Settings/SettingsSimple.hpp"
#include "System/MediaLayer.hpp"
#include "System/MainLoop.hpp"
#include "System/MainWindow.hpp"
#include "Renderer/Renderer.hpp"
#include "Renderer/OpenGLRenderer.hpp"
#include "Views/SampleGui.hpp"
#include <boost/utility.hpp>

class CApplication : boost::noncopyable
{
public:
    CApplication();
	virtual ~CApplication();
    int Start(int argc, char* argv[]);
private:
	AS::System::CMediaLayer m_MediaLayer;
	AS::System::CMainLoop m_MainLoop;
	AS::System::CMainWindow m_MainWindow;
	AS::Rendering::CRenderer<AS::Rendering::COpenGLRenderer> m_Renderer;
	AS::Gui::CSampleGui m_SampleGui;
};

#endif // AS_APPLICATION_INCLUDE




