#ifndef AS_COMPOSITING_TCOMPOSITE_INCLUDE
	#define AS_COMPOSITING_TCOMPOSITE_INCLUDE

#include "Common/Common.hpp"
#include "Assert.hpp"
#include "Component.hpp"

// TODO: Remove unnecessary libs:
#include <boost/shared_ptr.hpp>
#include <string>
#include <map>

namespace AS
{
	namespace Compositing
	{
		template<class T>
		class TComposite : public T
		{
		public:

			TComposite() {}

			virtual ~TComposite() {}

			/**
			 *  Access through an index operator.
			 *  @param A name of the component.
			 *  @return A child with a given name.
			 */
			virtual T& operator[](std::string const& name)
			{
				AS_ASSERT(!name.empty(), "Invalid name. Name cannot be empty.");
				typename ComponentsCollection::iterator it = m_Components.find(name);
				AS_ASSERT(it != m_Components.end(), "Can't find component named \"" + name + "\"");
				return *(it->second);
			}

			/**
			 *  Access through an index operator.
			 *  @warning It's volatile!
			 *  @param Position of a component.
			 *  @return A child with a given name.
			 */
			virtual T& operator[](int index)
			{
				AS_ASSERT(index >= 0, "Cannot access collection element at " + AS::Utils::CUtils::Convert<std::string>(index) + ". Index value out of range.");
				AS_ASSERT(static_cast<size_t>(index) < m_Components.size(),  "Cannot access collection element at " + AS::Utils::CUtils::Convert<std::string>(index) + ". Index value out of range.");
				typename ComponentsCollection::iterator it = m_Components.begin();
				for(int i=0; i<index; i++)
				{
					it++;
				}
				return *(it->second);
			}

			/**
			 *  Add a child.
			 *  Transfer the ownership.
			 */
			virtual void Add(std::auto_ptr<T> component)
			{
				AS_ASSERT(nullptr != component.get(), "Null pointer.");
				AS_ASSERT(!component->GetName().empty(), "Component doesn't have a name.");
				typename ComponentsCollection::iterator it = m_Components.find(component->GetName());
				AS_ASSERT(it == m_Components.end(), "Component already exists.");
				m_Components[component->GetName()] = component;
			}

			/**
			 *  Get the number of children.
			 *  @return Returns children count.
			 */
			virtual int GetCount() const
			{
				return static_cast<size_t>(m_Components.size());
			}

			virtual int GetDescendantsCount()
			{
				int Total = GetCount();
				ComponentsCollection::const_iterator it;
				for(it = m_Components.begin(); it != m_Components.end(); it++)
				{
					Total += it->second->GetDescendantsCount();
				}
				return Total;
			}

			/**
			 *  Remove a child.
			 */
			virtual void Remove(T& component)
			{
				Remove(component.GetName());
			}

			virtual void Remove(std::string const& name)
			{
				AS_ASSERT(!name.empty(), "Invalid name. Name cannot be empty.");
				typename ComponentsCollection::iterator it = m_Components.find(name);
				AS_ASSERT(it != m_Components.end(), "Cannot remove component named \"" + name + "\". Component with that name doesn't exists.");
				m_Components.erase(it);
			}

			virtual void Remove(int index)
			{
				AS_ASSERT(index >= 0, "Cannot access collection element at " + AS::Utils::CUtils::Convert<std::string>(index) + ". Index value out of range.");
				AS_ASSERT(static_cast<size_t>(index) < m_Components.size(),  "Cannot access collection element at " + AS::Utils::CUtils::Convert<std::string>(index) + ". Index value out of range.");
				typename ComponentsCollection::iterator it = m_Components.begin();
				for(int i=0; i <= index; i++)
				{
					it++;
				}
				m_Components.erase(it);
			}
		private:
			typedef std::map<std::string, boost::shared_ptr<T> > ComponentsCollection;
			ComponentsCollection m_Components;
		};
	} // ns Compositing
} // ns AS

#endif // AS_COMPOSITING_TCOMPOSITE_INCLUDE
