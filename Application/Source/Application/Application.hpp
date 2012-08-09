#ifndef AS_APPLICATION_INCLUDE
    #define AS_APPLICATION_INCLUDE

// LICENSE

/**
 *  @file name
 *
 *  Some description.
 */

//INCLUDES

#include "Framework/ASSDL.hpp"
#include "MediaLayer.hpp"
#include "MainLoop.hpp"
#include "MainWindow.hpp"
#include <boost/shared_ptr.hpp>

/**
 *  Represents OS process + main window.
 */
class CApplication // Tip: class is an aggregate like array and struct but types may vary.
{
public:

// TYPES

// LIFECYCE

    CApplication();
    ~CApplication();

// OPERATORS

// METHODS

    /**
     *  App start routine (process + GUI).
     *  @return Returns exit status.
     */
    int Start(int argc, char* argv[]);

// DATA

protected:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

// DATA

private:

// TYPES

    /**
     *  State of an application.
     */
    enum ERunningMode
    {
        e_Running,
        e_Stopped,
        e_Paused,
        e_Undefined
    };

// LIFECYCLE

	CApplication(CApplication const&);

// OPERATORS

	CApplication& operator=(CApplication const&);

// METHODS

// DATA

	AS::System::CMediaLayer m_MediaLayer;
	AS::System::CMainLoop m_MainLoop;
	AS::System::CMainWindow m_MainWindow;
};

// REFERENCES

#endif // AS_APPLICATION_INCLUDE




