/**
 *  class header template version 1
 * 
 *  @file name
 *  Brief description.
 *  Details description.
 */

// LICENSE

#ifndef AS_SETTINGS_VIDEO_H
    #define AS_SETTINGS_VIDEO_H

// INCLUDES

#include "SettingsVideoBpp.hpp"

// MACROS

namespace Settings
{
    /**
     *  Class description.
     */
    class CVideo
    {
    public:

    // TYPES

    // LIFECYCLE

        CVideo() {}
        virtual ~CVideo() {}

    // OPERATORS

    // METHODS

        Settings::Video::CBPP& GetBPP()
        {
            return m_BPP;
        }

    // DATA

    protected:

    // TYPES

    // LIFECYCLE

    // OPERATORS

    // METHODS

    // DATA

    private:

    // TYPES

    // LIFECYCLE

        CVideo(CVideo const&) {};

    // OPERATORS

        CVideo& operator=(CVideo const&) {};

    // METHODS

    // DATA

        Settings::Video::CBPP m_BPP;

    };

} // NS Settings

// INLINE METHODS

// TEMPLATE DEFINITIONS

// REFERENCES

#endif // AS_SETTINGS_VIDEO_H




