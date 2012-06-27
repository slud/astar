/**
 *  @file name
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_SETTINGS_SYSTEM_H
	#define AS_SETTINGS_SYSTEM_H

// INCLUDES

#include "Settings.h"


/**
 *	CSettingsSystem
 */
class CSettingsSystem
{
public:

// TYPES

	/**
	 *  Class specific result type.
	 */
	// TODO: Seems like a bad approach.
	enum EResult
	{
		e_Success = 0,
		e_ReadFailure = 1
	};

// LIFECYCLE

// OPERATORS

// METHODS

	virtual AS::CSettings& GetSettings() = 0;

	/**
	 *  Reads-in settings from an xml file.
	 *  @param FileName A file name only without the full path.
	 *  @return Returns operation status.
	 */
	virtual EResult Read(char const* FileName = "settings.xml") = 0;
	
	/**
	 *  Writes-out settings to an xml file.
	 *  @param FileName A file name only without the full path.
	 *  @return Returns operation status.
	 */
	virtual EResult Write(char const* FileName = "settings.xml") = 0;	
	
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

// OPERATORS

// METHODS

// DATA

};

// REFERENCES

#endif // AS_SETTINGS_SYSTEM_H




