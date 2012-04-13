/**
 *  @file SettingsVideo.h
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_SETTINGS_VIDEO_H
	#define AS_SETTINGS_VIDEO_H

// INCLUDES

#include "SettingsComponent.h"

namespace AS
{
	namespace Settings
	{
		/**
		 *  CVideo
		 * 
		 *	An ABC class for video xml element.
		 */
		class CVideo : public CSettingsComponent
		{
		public:

		// TYPES

		// LIFECYCLE

		// OPERATORS

		// METHODS

			virtual int GetBPP() const = 0;
			
			/**
			 *  Returns the name of a video element in an xml settings file.
			 *  @return Pointer to an ummutable C string.
			 */
			static inline char const* GetXmlName();

			virtual int GetHeight() const = 0;
			
			virtual int GetWidth() const = 0;			

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
		
			static const char m_XmlName[];

		};
		
		inline char const* CVideo::GetXmlName()
		{
			return m_XmlName;
		}
	} // NS Settings
} // NS AS

// REFERENCES

// [PAZA] - xml element is all that is <name1></name1> whereas xml tag is the "name1".

#endif // AS_SETTINGS_VIDEO_H




