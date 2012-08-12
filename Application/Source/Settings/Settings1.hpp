#ifndef AS_SETTINGS_INCLUDE
#define AS_SETTINGS_INCLUDE

#include "Framework/Component.hpp"
#include "Framework/Composite.hpp"
#include "Framework/Leaf.hpp"
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/xml_parser.hpp>

namespace AS
{
	namespace Cfg
	{
		class CSettingsComponent : public AS::Compositing::TComponent<CSettingsComponent>
		{
		public:
			CSettingsComponent(std::string const& name, CSettingsComponent& parent) :
				TComponent<CSettingsComponent>()
			{
				SetName(name);
			}
			virtual CSettingsComponent const& GetParent() const = 0;
			virtual std::string const& GetPath() const = 0;
		protected:
			std::string m_Path;
		};

		class CSettingsComposite : public AS::Compositing::TComposite<CSettingsComponent>
		{
		public:
			CSettingsComposite(std::string const& name) :
				CSettingsComponent(name)
			{
			}
		};

		class CSettingsLeaf : public AS::Compositing::TLeaf<CSettingsComponent>
		{
		public:
			template<class T>
			virtual T const& GetValue() const { return m_Value; }
			template<class T>
			virtual void SetValue(T const& value) { m_Value = value; }
		protected:
			T m_Value;
		};

		class CVideo;

		class CVideo::CBPP : public CSettingsLeaf
		{
		public:
			virtual ~CBPP() {}
			virtual void SetValue(int const& value)
			{
				ASSERT(value==24 || value==32, "Invalid BPP value.");
				m_Value = value;
			}
		};

		class CVideo::CHeight : public CSettingsLeaf
		{
		public:
			virtual void SetValue(int const& value)
			{
				ASSERT(value>0, "Invalid Height value.");
				m_Value = value;
			}
		};

		class CVideo::CWidth : public CSettingsLeaf
		{
		public:
			virtual void SetValue(int const& value)
			{
				ASSERT(value>0, "Invalid Width value.");
				m_Value = value;
			}
		};

		class CVideo : public CSettingsComposite
		{
		public:
			virtual void Add(std::auto_ptr<CBPP>);
			virtual CBPP& GetBPP();
		private:
			CBPP m_BPP;
		};

		class CSettings : public CSettingsComposite
		{
		public:
			virtual void Add(std::auto_ptr<CVideo>);
			virtual CVideo& GetVideo();
			virtual void Load(std::string const& file);
			virtual void Save(std::string const& file);
		private:
			boost::property_tree::ptree m_PropertyTree;
			CVideo m_Video;
		};
	} // ns Cfg
} // ns AS

#endif // AS_SETTINGS_INCLUDE