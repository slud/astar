#ifndef AS_COMPOSITING_TCOMPONENT_INCLUDE
    #define AS_COMPOSITING_TCOMPONENT_INCLUDE

#include <string>

namespace AS
{
	namespace Compositing
	{
		/**
		 *  Component class template.
		 *  TODO: Ctor, dtor, copy ctor, assignment operator
		 *  should be defined in T for T and here for template<T>?
		 */
		template<class T>
		class TComponent
		{
		public:

			TComponent() {}
		    
			virtual ~TComponent() = 0 {}

			/**
			 *  Access through an index operator.
			 *  @param A name of the component.
			 *  @return A child with a given name.
			 */
			virtual T&                    operator[](std::string const&);

			/**
			 *  Access through an index operator.
			 *  @warning It's volatile!
			 *  @param Position of a component.
			 *  @return A child with a given name.
			 */
			virtual T&                    operator[](int);

			/**
			 *  Add a child.
			 *  Transfer the ownership.
			 */
			virtual void                  Add(std::auto_ptr<T>);

			/**
			 *  Get the number of children.
			 *  @return Returns children count.
			 */
			virtual int                   GetCount();

			/**
			 *  Get the name of the component.
			 *  @return Returns name of the component.
			 */
			virtual std::string const&    GetName() const;

			/**
			 *  Remove a child.
			 */
			virtual void                  Remove(T&);
			virtual void                  Remove(std::string const&);
			virtual void                  Remove(int);

			/**
			 *  Set the name of the component.
			 *  @param name Sets name of the component.
			 */
			virtual void                  SetName(std::string const& name);
		private:
			std::string m_Name;
		};
	} // ns Compositing
} // ns AS

template<class T>
std::string const& AS::Compositing::TComponent::GetName() const
{
	return m_Name;
}

template<class T>
void AS::Compositing::TComponent::SetName(std::string const& name)
{
	m_Name = name;
}

#endif // AS_COMPOSITING_TCOMPONENT_INCLUDE




