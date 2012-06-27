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
		class CVideo
		{
		public:

		// METHODS

			/**
			 *  Gets color depth.
			 *  @return Bits per pixel
			 */
			virtual int GetBPP() const = 0;
		
			/**
			 *  Gets window height.
			 *  @return Window height
			 */
			virtual int GetHeight() const = 0;
			
			/**
			 *  Gets window width.
			 *  @return Window width
			 */
			virtual int GetWidth() const = 0;

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

#if 0
		/** 
		 *  CVideoXml class
		 *  We keep the setting in an xml file.
		 */
		class CVideoXml : public CVideo
		{
		public:
			/**
			 *  Returns the name of a video element in an xml settings file.
			 *  @return Pointer to an ummutable C string.
			 */
			static inline char const* GetXmlName();
		private:
			static const char m_XmlName[];
		};
		
		inline char const* CVideoXml::GetXmlName()
		{
			return m_XmlName;
		}
#endif
	} // NS Settings
} // NS AS

// REFERENCES

// [PAZA1] - an xml element consists of all parts like <name1></name1> whereas xml tag is just the "name1".

#endif // AS_SETTINGS_VIDEO_H




