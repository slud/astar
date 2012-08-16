#ifndef AS_SYSTEM_SETTINGS_INCLUDE
	#define AS_SYSTEM_SETTINGS_INCLUDE

#include "Framework/Common.hpp"
#include "Framework/Component.hpp"
#include "Framework/Composite.hpp"
#include "Framework/Leaf.hpp"
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/xml_parser.hpp>
#include <boost/utility.hpp>

namespace AS
{
	namespace System
	{
		const char c_SettingsPathSeparator = '.';
		const char c_XmlPathSeparator      = '/';

		class CSettingsComponent : public AS::Compositing::TComponent<CSettingsComponent>, boost::noncopyable
		{
		public:
			CSettingsComponent() : m_Parent(nullptr) {}
			virtual ~CSettingsComponent() {}
			virtual CSettingsComponent* GetParent() { return m_Parent; }
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
			virtual void SetParent(CSettingsComponent* parent) { m_Parent = parent;	}
		protected:
			CSettingsComponent* m_Parent;
			std::string m_Path;
		};

		class CSettingsComposite : public AS::Compositing::TComposite<CSettingsComponent>
		{
		};

		template<class T>
		class CSettingsLeaf : public AS::Compositing::TLeaf<CSettingsComponent>
		{
		public:
			virtual T const& GetValue() const { return m_Value;	}
			virtual void SetValue(T const& value) {	m_Value = value; }
		protected:
			T m_Value;
		};

		class CBPP : public CSettingsLeaf<int>
		{
		public:
			virtual ~CBPP() {}
			virtual std::string const& GetPropertyName() const { return m_PropertyName; }
			virtual void SetValue(int const& value)
			{
				ASSERT(value==24 || value==32, "Invalid BPP value.");
				m_Value = value;
			}
		private:
			friend class CVideo;
			CBPP() : m_PropertyName("bpp") { }
			const std::string m_PropertyName;
		};

		class CHeight : public CSettingsLeaf<int>
		{
		public:
			virtual ~CHeight() {}
			virtual std::string const& GetPropertyName() const { return m_PropertyName; }
			virtual void SetValue(int const& value)
			{
				ASSERT(value>0, "Invalid Height value.");
				m_Value = value;
			}
		private:
			friend class CVideo;
			CHeight() : m_PropertyName("height") {}
			const std::string m_PropertyName;
		};

		class CWidth : public CSettingsLeaf<int>
		{
		public:
			virtual ~CWidth() {}
			virtual std::string const& GetPropertyName() const { return m_PropertyName; }
			virtual void SetValue(int const& value)
			{
				ASSERT(value>0, "Invalid Width value.");
				m_Value = value;
			}
		private:
			friend class CVideo;
			CWidth() : m_PropertyName("width") {}
			const std::string m_PropertyName;
		};

		class CVideo : public CSettingsComposite
		{
		public:
			virtual ~CVideo() {}
			virtual CBPP& GetBPP() { return m_BPP; }
			virtual CHeight& GetHeight() { return m_Height; }
			virtual std::string const& GetPropertyName() const { return m_PropertyName;	}
			virtual CWidth& GetWidth() { return m_Width; }
		private:
			friend class CSettings;
			CVideo() : m_PropertyName("video")
			{
				m_BPP.SetParent(this);
				m_Height.SetParent(this);
				m_Width.SetParent(this);
			}
			const std::string m_PropertyName;
			CBPP m_BPP;
			CHeight m_Height;
			CWidth m_Width;
		};

		class CSettings : public CSettingsComposite
		{
		public:
			CSettings() :
				m_SettingsFileName("Settings.xml"),
				m_PropertyName("settings")
			{
				m_Video.SetParent(this);
			}
			virtual CVideo& GetVideo() { return m_Video; }
			virtual std::string const& GetPropertyName() const { return m_PropertyName; }
			virtual void Load() // TODO: What about thread safety here?
			{
				boost::property_tree::xml_parser::read_xml(m_SettingsFileName, m_PropertyTree); // Could "bridge" it out, but too much effort to do so...
				LoadValue(m_Video.GetBPP());
				LoadValue(m_Video.GetHeight());
				LoadValue(m_Video.GetWidth());
			}
			virtual void Save() // TODO: What about thread safety here?
			{
				SaveValue(m_Video.GetBPP());
				SaveValue(m_Video.GetHeight());
				SaveValue(m_Video.GetWidth());
				boost::property_tree::xml_parser::write_xml(m_SettingsFileName, m_PropertyTree);
			}
		private:
			template<class T>
			void LoadValue(CSettingsLeaf<T>& leaf)
			{
#ifdef _DEBUG1
				std::string const& Path = leaf.GetPath(); 
				T const Value = m_PropertyTree.get<T>(Path);
				leaf.SetValue(Value);
#else
				leaf.SetValue(pt.get<T>(leaf.GetPath()));
#endif
			}
			template<class T>
			void SaveValue(CSettingsLeaf<T>& leaf)
			{
#ifdef _DEBUG1
				std::string const& Path = leaf.GetPath(); 
				T const Value = leaf.GetValue();
				m_PropertyTree.put(Path, Value);
#else
				m_PropertyTree.put(leaf.GetPath(), leaf.GetValue());
#endif
			}
			const std::string m_SettingsFileName;
			const std::string m_PropertyName;
			CVideo m_Video;
			boost::property_tree::ptree m_PropertyTree;
		};
	} // ns Cfg
} // ns AS

#endif // AS_SYSTEM_SETTINGS_INCLUDE