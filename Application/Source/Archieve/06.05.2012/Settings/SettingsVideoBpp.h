#ifndef AS_SETTINGS_VIDEO_H
	#define AS_SETTINGS_VIDEO_H

// INCLUDES

#include "SettingsComponent.h"

namespace AS
{
	namespace Settings
	{
		namespace Video
		{
			class CBPP
			{
			public:

			// METHODS

				/**
				 *  Gets color depth.
				 *  @return Bits per pixel
				 */
				virtual int GetValue() const = 0;

				virtual void SetValue(int bpp) = 0;

			};

#if 0
			/** 
			 *  CVideoXml class
			 *  We keep the setting in an xml file.
			 */
			class CBPPXml : public CBPP
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
		} // NS Video
	} // NS Settings
} // NS AS

// REFERENCES

#endif // AS_SETTINGS_VIDEO_H




