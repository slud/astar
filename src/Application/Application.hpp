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
    void ProcessEvents(Event_t const&);

// DATA

private:

// TYPES

    /**
     *  Application's specific result values.
     */
    enum EResult
    {
        e_Success = 0,
        e_InitializeFailure = 1
    };

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
    ~CApplication();

// OPERATORS

	CApplication& operator=(CApplication const&);

// METHODS

    /**
     *  Inits the application.
     */
    EResult Initialize();

	void Loop();

    void Shutdown();

    /**
     *  App stop request.
     *  This can be called only internally.
     *  Somehow from within of the main loop.
     */
    void Stop();

// DATA

	class CWindowSystem;
	boost::shared_ptr<CWindowSystem> m_pWindowSystem;

    bool            m_Running;

};

// REFERENCES

#endif // AS_APPLICATION_INCLUDE




