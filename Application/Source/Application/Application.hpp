#ifndef AS_APPLICATION_INCLUDE
    #define AS_APPLICATION_INCLUDE

#include "Settings/Settings.hpp"
#include "MediaLayer.hpp"
#include "MainLoop.hpp"
#include "MainWindow.hpp"
#include <boost/utility.hpp>

class CApplication : boost::noncopyable
{
public:
    CApplication();
	virtual ~CApplication();
    int Start(int argc, char* argv[]);
private:
	AS::System::CSettings m_Settings;
	AS::System::CMediaLayer m_MediaLayer;
	AS::System::CMainLoop m_MainLoop;
	AS::System::CMainWindow m_MainWindow;
};

#endif // AS_APPLICATION_INCLUDE




