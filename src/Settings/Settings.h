/**
 *  @file name
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_SETTINGS_H
	#define AS_SETTINGS_H

// INCLUDES
#include "SettingsComposite.h"
#include "SettingsVideo.h"

namespace AS
{
	/**
	 *	CSettings
	 */
	class CSettings : public CSettingsComposite
	{
	public:

	// TYPES

	// LIFECYCLE

	// OPERATORS

	// METHODS

		virtual AS::Settings::CVideo& GetVideo() = 0;

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

	
} // NS AS

// REFERENCES

#endif // AS_SETTINGS_H




