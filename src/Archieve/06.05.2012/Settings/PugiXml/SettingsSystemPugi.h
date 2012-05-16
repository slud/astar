/**
 *  @file name
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_SETTINGS_SYSTEM_PUGI_H
	#define AS_SETTINGS_SYSTEM_PUGI_H

// INCLUDES

#include "SettingsSystem.h"
#include "Settings.h"
#include "pugixml.hpp"
#include <string>

/**
 *	CSettingsSystem
 */
class CSettingsSystemPugiSingleton : public CSettingsSystem
{
public:

// TYPES

// LIFECYCLE

// OPERATORS

// METHODS

	virtual AS::CSettings& GetSettings();

	static CSettingsSystemPugiSingleton& Instance()
	{
		static CSettingsSystemPugiSingleton Instance;
		return Instance;
	}

	/**
	 *  Reads-in settings from an xml file.
	 *  @param FileName A file name only without the full path.
	 *  @return Returns operation status.
	 */
	virtual EResult Read(char const* FileName = "settings.xml");
	
	/**
	 *  Writes-out settings to an xml file.
	 *  @param FileName A file name only without the full path.
	 *  @return Returns operation status.
	 */
	virtual EResult Write(char const* FileName = "settings.xml");

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

	CSettingsSystemPugiSingleton();
	CSettingsSystemPugiSingleton(CSettingsSystemPugiSingleton const&);
	
	~CSettingsSystemPugiSingleton();

// OPERATORS

	CSettingsSystemPugiSingleton& operator=(CSettingsSystemPugiSingleton const&);

// METHODS

// DATA

	pugi::xml_document* m_pDoc;
	//AS::CSettings m_Settings;

};

// REFERENCES

#endif // AS_SETTINGS_SYSTEM_PUGI_H




