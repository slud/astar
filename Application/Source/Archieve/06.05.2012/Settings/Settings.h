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
	class CSettings
	{
	public:
	// METHODS

		virtual AS::Settings::CVideo& GetVideo() = 0;

	};
#if 0
	/** 
	 *  CSettingsXml class
	 */
	class CSettingsXml : public CSettigns
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
} // NS AS

// REFERENCES

#endif // AS_SETTINGS_H




