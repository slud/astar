#ifndef AS_APPLICATION_INCLUDE
    #define AS_APPLICATION_INCLUDE

#include "Settings/SettingsSimple.hpp"
#include "MediaLayer.hpp"
#include "MainLoop.hpp"
#include "MainWindow.hpp"
#include "Renderer/Renderer.hpp"
#include <boost/utility.hpp>

class CApplication : boost::noncopyable
{
public:
    CApplication();
	virtual ~CApplication();
    int Start(int argc, char* argv[]);
private:
	AS::System::CSettingsSimple m_Settings;
	AS::System::CMediaLayer m_MediaLayer;
	AS::System::CMainLoop m_MainLoop;
	AS::System::CMainWindow m_MainWindow;
	AS::Rendering::CRenderer<AS::Rendering::COpenGLRenderer> m_Renderer;
};

#endif // AS_APPLICATION_INCLUDE




