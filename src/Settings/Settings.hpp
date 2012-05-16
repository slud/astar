/**
 *  class header template version 1
 * 
 *  @file name
 *  Brief description.
 *  Details description.
 */

// LICENSE

#ifndef AS_SETTINGS_H
    #define AS_SETTINGS_H

// INCLUDES

#include "SettingsVideo.hpp"

// MACROS

/**
 *  Class description.
 */
class CSettings
{
public:

// TYPES

// LIFECYCLE

    CSettings();
    virtual ~CSettings();

// OPERATORS

// METHODS

    Settings::CVideo& GetVideo();

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

    CSettings(CSettings const&);

// OPERATORS

    CSettings& operator=(CSettings const&);

// METHODS

// DATA

    Settings::CVideo m_Video;

};

// INLINE METHODS

// TEMPLATE DEFINITIONS

// REFERENCES

#endif // AS_SETTINGS_H




