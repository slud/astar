/**
 *  @file name
 *
 *  Some description.
 */

// LICENSE

#ifndef AS_SETTINGSS_VIDEO_PUGI_H
	#define AS_SETTINGSS_VIDEO_PUGI_H

// INCLUDES
#include <cassert>
#include "pugixml.hpp"
#include "SettingsVideo.h"

namespace AS
{
	namespace Settings
	{
		/**
		 *	Class description.
		 */
		class CVideoPugi : public CVideo
		{
		public:

		// TYPES

		// LIFECYCLE
		
			/**
			 *  Constructor
			 *  @param element A reference to a mutable xml element.
			 */
			CVideoPugi(pugi::xml_element& element);
			virtual ~CVideoPugi();

		// OPERATORS

		// METHODS

			virtual int GetBPP() const;
			
			virtual int GetHeight() const;
			
			virtual int GetWidth() const;

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
		
			/**
			 * CC
			 */
			CVideoPugi(CVideoPugi const&);

		// OPERATORS
		
			CVideoPugi& operator=(CVideoPugi const&);

		// METHODS
		
			inline pugi::xml_element& GetXmlElement() const;

		// DATA
		
			int                         m_BPP;
			int                         m_Width;
			int                         m_Height;
			pugi::xml_element*          m_pXmlElement;

		};
		
		inline pugi::xml_element& GetXmlElement() const
		{
			return *m_pXmlElement;
		}
		
	} // NS Settings
} // NS AS

// REFERENCES

#endif // AS_SETTINGSS_VIDEO_PUGI_H




