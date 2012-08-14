#ifndef AS_SETTINGS_INCLUDE
#define AS_SETTINGS_INCLUDE

#include "Framework/Common.hpp"
#include "Framework/Component.hpp"
#include "Framework/Composite.hpp"
#include "Framework/Leaf.hpp"
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/xml_parser.hpp>
#include <boost/utility.hpp>

namespace AS
{
	namespace Cfg
	{
		const char   c_SettingsPathSeparator = '.';
		const char   c_XmlPathSeparator      = '/';
		const char   c_SettingsFileName[]    = "Settings.xml";

		class CSettingsComponent : public AS::Compositing::TComponent<CSettingsComponent>, public boost::noncopyable
		{
		public:
			CSettingsComponent() : m_Parent(nullptr)
			{
			}
			virtual CSettingsComponent* GetParent()
			{
				return m_Parent;
			}
			virtual std::string const& GetPath()
			{
				if(m_Path.empty())
				{
					if(m_Parent)
					{
						m_Path += m_Parent->GetPath();
						m_Path += c_SettingsPathSeparator;	
					}
					std::string const& PropertyName = GetPropertyName();
					ASSERT(!PropertyName.empty(), "Name of the settings component cannot be empty.");
					m_Path += PropertyName;
				}
				return m_Path;
			}
			virtual std::string const& GetPropertyName() const = 0;
			virtual void SetParent(CSettingsComponent* parent)
			{
				m_Parent = parent;
			}
		protected:
			CSettingsComponent* m_Parent;
			std::string m_Path;
			std::string m_PropertyName;
		};

		class CSettingsComposite : public AS::Compositing::TComposite<CSettingsComponent>
		{
		};

		template<class T>
		class CSettingsLeaf : public AS::Compositing::TLeaf<CSettingsComponent>
		{
		public:
			T const& GetValue() const
			{
				return m_Value;
			}
			void SetValue(T const& value)
			{
				m_Value = value;
			}
		protected:
			T m_Value;
		};

		class CBPP : public CSettingsLeaf<int>
		{
		public:
			CBPP() { m_PropertyName = "bpp"; }
			virtual ~CBPP() {}
			virtual std::string const& GetPropertyName() const
			{
				return m_PropertyName;
			}
			void SetValue(int const& value)
			{
				ASSERT(value==24 || value==32, "Invalid BPP value.");
				m_Value = value;
			}
		};

		class CHeight : public CSettingsLeaf<int>
		{
		public:
			CHeight() { m_PropertyName = "height"; }
			virtual ~CHeight() {}
			virtual std::string const& GetPropertyName() const
			{
				return m_PropertyName;
			}
			void SetValue(int const& value)
			{
				ASSERT(value>0, "Invalid Height value.");
				m_Value = value;
			}
		};

		class CWidth : public CSettingsLeaf<int>
		{
		public:
			CWidth() { m_PropertyName = "width"; }
			virtual ~CWidth() {}
			virtual std::string const& GetPropertyName() const
			{
				return m_PropertyName;
			}
			void SetValue(int const& value)
			{
				ASSERT(value>0, "Invalid Width value.");
				m_Value = value;
			}
		};

		class CVideo : public CSettingsComposite
		{
		public:
			CVideo() { m_PropertyName = "video"; }
			virtual ~CVideo() {}
			virtual CBPP& GetBPP() { return m_BPP; }
			virtual std::string const& GetPropertyName() const
			{
				return m_PropertyName;
			}
		private:
			CBPP m_BPP;
		};

		class CSettings : public CSettingsComposite
		{
		public:
			CSettings() { m_PropertyName = "settings"; }
			virtual CVideo& GetVideo() { return m_Video; }
			virtual std::string const& GetPropertyName() const
			{
				return m_PropertyName;
			}
			virtual void Load()
			{
				boost::property_tree::xml_parser::read_xml(m_SettingsFileName, m_PropertyTree);
			}
			virtual void Save()
			{
				boost::property_tree::xml_parser::write_xml(m_SettingsFileName, m_PropertyTree);
			}
		private:
			static const char m_SettingsFileName[];
			boost::property_tree::ptree m_PropertyTree;
			CVideo m_Video;
		};

		const char CSettings::m_SettingsFileName[] = "Settings.xml";
	} // ns Cfg
} // ns AS

#endif // AS_SETTINGS_INCLUDE