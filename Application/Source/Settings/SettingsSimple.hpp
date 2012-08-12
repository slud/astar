#ifndef AS_SETTINGS_INCLUDE
	#define AS_SETTINGS_INCLUDE

#include "Framework/Assert.hpp"
#include "Libraries/pugixml-1.0/pugixml.hpp"

namespace AS
{
	namespace Configuration
	{
		const char   c_XmlPathSeparator = "/";
		const char[] c_SettingsFileName = "Settings.xml";
		const char[] c_SettingsElement  = "settings";
		const char[] c_VideoElement     = "video";
		const char[] c_BPPElement       = "bpp";
		const char[] c_HeightElement    = "height";
		const char[] c_WidthElement     = "width";

		template<class T>
		CValue
		{
		public:
			virtual T GetValue() const { return m_Value; }
			virtual T SetValue(T value) { m_Value = value; }
		protected:
			T m_Value;
		};

		class CUnsignedIntValue : public CValue<int>
		{
		public:
			virtual T SetValue(T value)
			{
				ASSERT(value>=0, "Wrong value.");
				m_Value = value;
			}
		};

		class CSettings
		{
		public:
			class CVideo
			{
			public:
				typedef CUnsignedIntValue CBPP;
				typedef CUnsignedIntValue CHeight;
				typedef CUnsignedIntValue CWidth;
				CBPP& GetBPP();
				CHeight& GetHeight();
				CWidth& GetWidth();
			private:
				CBPP m_BPP;
				CHeight m_Height;
				CWidth m_Width;
			};
			CSettings()
			{
				m_XmlDocument.load_file(c_SettingsFileName);
				ReadVideo();
			}
			CVideo& GetVideo();
			void Refresh();
			void Save()
			{
				m_XmlDocument.save_file(c_SettingsFileName);
			}
		private:
			void ReadVideo();
			void WriteVideo();
			CVideo m_Video;
			pugi::xml_document m_XmlDocument;
		};
	} // ns Configuration
} // ns AS

#endif // AS_SETTINGS_INCLUDE