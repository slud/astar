#include "ViewComponents.hpp"
#include "Common/Common.hpp"
#include "Common/Messages.hpp"
#include "Renderer/Renderer.hpp"
#include "SDL_opengl.h"
#include <boost/bind.hpp>
#include <exception>

AS::Views::CViewComponent::CViewComponent() :
	m_pParent(nullptr),
	m_Opacity(100),
	m_KeyPressed(false),
	m_Hitted(false),
	m_BackgroundImageId(0),
	KeyDown(m_KeyDownEventHandler),
	KeyPress(m_KeyPressEventHandler),
	MouseButtonDown(m_MouseButtonDownEventHandler)
{
}

AS::Views::CViewComponent::~CViewComponent()
{
}

void AS::Views::CViewComponent::CalculateDrawArea()
{
	m_Point1.X = m_GlobalPosition.X + m_Size.Width;
	m_Point1.Y = m_GlobalPosition.Y + m_Size.Height;
}

void AS::Views::CViewComponent::CalculateGlobalPosition()
{
	if(m_pParent)
		m_GlobalPosition = m_pParent->GetGlobalPosition() + m_LocalPosition;
	else
		m_GlobalPosition = m_LocalPosition;
}

AS::Views::CColor const& AS::Views::CViewComponent::GetBackgroundColor() const
{
	return m_BackgroundColor;
}

AS::Views::CPosition const& AS::Views::CViewComponent::GetGlobalPosition()
{
	return m_GlobalPosition;
}

int const& AS::Views::CViewComponent::GetOpacity() const
{
	return m_Opacity;
}

AS::Views::CViewComponent* AS::Views::CViewComponent::GetParent()
{
	return m_pParent;
}

AS::Views::CPosition const& AS::Views::CViewComponent::GetPosition() const
{
	return m_LocalPosition;
}

AS::Views::CSize const& AS::Views::CViewComponent::GetSize() const
{
	return m_Size;
}

bool AS::Views::CViewComponent::HitTest(CVector2d point)
{
	bool HeightCheck = false;
	bool WidthCheck = false;
	if(point.X >= m_GlobalPosition.X && point.X <= (m_GlobalPosition.X + m_Size.Width))
		WidthCheck = true;
	if(point.Y >= m_GlobalPosition.Y && point.Y <= (m_GlobalPosition.Y + m_Size.Height))
		HeightCheck = true;
	if( HeightCheck && WidthCheck ) m_Hitted = true;
	return m_Hitted;
}

namespace { GLuint mTextureID = 0; }
void AS::Views::CViewComponent::Paint()
{
	glBegin( GL_QUADS );
	if(m_BackgroundImageId)
	{
		//glBindTexture(GL_TEXTURE_2D, NULL);
		glBindTexture(GL_TEXTURE_2D, m_BackgroundImageId);
		glBegin(GL_QUADS);
			glTexCoord2i(0, 0); glVertex2i(m_GlobalPosition.X, m_GlobalPosition.Y);
			glTexCoord2i(1, 0); glVertex2i(m_Point1.X, m_GlobalPosition.Y);
			glTexCoord2i(1, 1); glVertex2i(m_Point1.X, m_Point1.Y);
			glTexCoord2i(0, 1); glVertex2i(m_GlobalPosition.X, m_Point1.Y);
		glEnd();
	}
	else
	{
		//glBindTexture(GL_TEXTURE_2D, NULL);
		glColor3f(m_BackgroundColor.Red, m_BackgroundColor.Green, m_BackgroundColor.Blue);
		glVertex2i(m_GlobalPosition.X, m_GlobalPosition.Y);
		glVertex2i(m_Point1.X, m_GlobalPosition.Y);
		glVertex2i(m_Point1.X, m_Point1.Y);
		glVertex2i(m_GlobalPosition.X, m_Point1.Y);
		glColor3f(1.0f, 0.0f, 1.0f); // TODO: Set back color to default value. Magenta here.
	}
	glEnd();
}

void AS::Views::CViewComponent::ProcessEvent(Event_T const& event)
{
	switch( event.type )
	{
	case SDL_KEYDOWN:
		++m_KeyPressed;
		m_KeyDownEventHandler(event);
		break;
	case SDL_KEYUP:
		--m_KeyPressed;
		break;
	case SDL_MOUSEBUTTONDOWN:
		switch(event.button.button)
		{
		case SDL_BUTTON_LEFT:
			HitTest(CVector2d(event.button.x, event.button.y));
			break;
		}
		m_MouseButtonDownEventHandler(event);
		break;
	case SDL_MOUSEBUTTONUP:
		m_Hitted = false;
		break;
	case SDL_MOUSEMOTION:
		if(m_Hitted)
			SetPosition(CPosition(m_LocalPosition.X + event.motion.xrel, m_LocalPosition.Y + event.motion.yrel));
		break;
	default:
		break;
	}
	if(m_KeyPressed)
		m_KeyPressEventHandler(event);
}

void AS::Views::CViewComponent::RecalculatePositions()
{
	CalculateGlobalPosition();
	CalculateDrawArea();
}

void AS::Views::CViewComponent::SetBackgroundColor(CColor const& color)
{
	m_BackgroundColor = color;
}

#include "IL/il.h"
#include <string>

void AS::Views::CViewComponent::SetBackgroundImage(std::string const& file)
{
    //Texture loading success
    bool textureLoaded = false;
	ILuint imgID = 0;
    ilGenImages( 1, &imgID );
    ilBindImage( imgID );
	ILboolean success = ilLoadImage( file.c_str() );
    //Image loaded successfully
    if( success == IL_TRUE )
    {
        //Convert image to RGBA
		int help0 = ilGetInteger(IL_IMAGE_FORMAT);
        success = ilConvertImage( IL_RGBA, IL_UNSIGNED_BYTE );
        if( success == IL_TRUE )
        {
            //Create texture from file pixels
            //textureLoaded = loadTextureFromPixels32( (GLuint*)ilGetData(), (GLuint)ilGetInteger( IL_IMAGE_WIDTH ), (GLuint)ilGetInteger( IL_IMAGE_HEIGHT ) );
			
			//Generate texture ID
			glGenTextures( 1, &mTextureID );
			//Bind texture ID
			glBindTexture( GL_TEXTURE_2D, mTextureID );
			//Generate texture
			int BPP = ilGetInteger(IL_IMAGE_BPP);
			int Width = ilGetInteger(IL_IMAGE_WIDTH);
			int Height = ilGetInteger(IL_IMAGE_HEIGHT);
			int Format = ilGetInteger(IL_IMAGE_FORMAT);
			glTexImage2D( GL_TEXTURE_2D, 0, GL_RGBA, Width, Height, 0, GL_RGBA, GL_UNSIGNED_BYTE, (GLuint*)ilGetData() );
			//Set texture parameters
			glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
			glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
			glBindTexture( GL_TEXTURE_2D, NULL );

			//Check for error
			GLenum error = glGetError();
			if( error != GL_NO_ERROR )
			{
			}

			m_BackgroundImageId = mTextureID;
        }
        //Delete file from memory
        ilDeleteImages( 1, &imgID );
    }
	//throw std::exception(AS::Common::Messages::Exceptions::c_NotImplemented);
}

void AS::Views::CViewComponent::SetOpacity(int percent)
{
	m_Opacity = percent;
	if(percent < 0)
		m_Opacity = 0;
	if(percent > 100)
		m_Opacity = 100;
}

void AS::Views::CViewComponent::SetParent(CViewComponent* parent)
{
	m_pParent = parent;
	RecalculatePositions();
}

void AS::Views::CViewComponent::SetPosition(const AS::Views::CPosition &position)
{
	m_LocalPosition = position;
	RecalculatePositions();
}

void AS::Views::CViewComponent::SetSize(const AS::Views::CSize &size)
{
	m_Size = size;
	RecalculatePositions();
}

void AS::Views::CViewComponent::Show()
{
	AS::Rendering::Register2dPaintHandler(boost::bind(&AS::Views::CViewComponent::Paint, this));
}

AS::Views::CViewComposite::CViewComposite()
{
}

AS::Views::CViewComposite::~CViewComposite()
{
}

void AS::Views::CViewComposite::Add(std::auto_ptr<CViewComponent> viewComponent)
{
	AS_ASSERT(nullptr != viewComponent.get(), "Null pointer.");
	AS_ASSERT(!viewComponent->GetName().empty(), "Component doesn't have a name.");
	viewComponent->SetParent(this);
	TComposite<CViewComponent>::Add(viewComponent);
}

void AS::Views::CViewComposite::Paint()
{
	CViewComponent::Paint(); // Draw myself.
	for(size_t i=0; i < m_PaintDelegates.size(); i++) // Draw my content.
	{
		m_PaintDelegates[i]();
	}
}

void AS::Views::CViewComposite::ProcessEvent(Event_T const& event)
{
	for(int i=m_EventDelegates.size()-1; i >= 0; i--) // From top to bottom.
	{
		m_EventDelegates[i](event);
	}
	CViewComponent::ProcessEvent(event);
}

void AS::Views::CViewComposite::RecalculatePositions()
{
	CViewComponent::RecalculatePositions();
	int Count = GetCount();
	for(int i=0; i<Count; i++)
	{
		(*this)[i].RecalculatePositions();
	}
}

void AS::Views::CViewComposite::Show()
{
	int i = 0;
	// Prepare a stack of member function pointers from children sub-tree.
	// Register this.Render() which will itereate through the stack and render each child.
	PaintDelegateCollection Collection0;
	RegisterPaintDelegates(Collection0);
	m_PaintDelegates.resize(Collection0.size());
	PaintDelegateCollection::const_iterator it0;
	// Copy delegates.
	for(it0=Collection0.begin(); it0!=Collection0.end(); it0++)
	{
		m_PaintDelegates[i] = *it0;
		i++;
	}
	EventDelegateCollection Collection1;
	RegisterEventDelegates(Collection1);
	m_EventDelegates.resize(Collection1.size());
	EventDelegateCollection::const_iterator it1;
	i=0;
	for(it1=Collection1.begin(); it1!=Collection1.end(); it1++)
	{
		m_EventDelegates[i] = *it1;
		i++;
	}

	CViewComponent::Show();
}

void AS::Views::CViewComposite::RegisterEventDelegates(EventDelegateCollection& delegates)
{
	int Count = GetCount();
	for(int i=0; i<Count; i++)
	{
		delegates.push_back(boost::bind(&AS::Views::CViewComponent::ProcessEvent, &(*this)[i], _1));
	}
	for(int i=0; i<Count; i++)
	{
		(*this)[i].RegisterEventDelegates(delegates);
	}
}

void AS::Views::CViewComposite::RegisterPaintDelegates(PaintDelegateCollection& delegates)
{
	int Count = GetCount();
	for(int i=0; i<Count; i++)
	{
		delegates.push_back(boost::bind(&AS::Views::CViewComponent::Paint, &(*this)[i]));
	}
	for(int i=0; i<Count; i++)
	{
		(*this)[i].RegisterPaintDelegates(delegates);
	}
}

AS::Views::CViewLeaf::CViewLeaf()
{
}

AS::Views::CViewLeaf::~CViewLeaf()
{
}

void AS::Views::CViewLeaf::Paint()
{
	CViewComponent::Paint();
}

void AS::Views::CViewLeaf::ProcessEvent(Event_T const& event)
{
	CViewComponent::ProcessEvent(event);
}

void AS::Views::CViewLeaf::RecalculatePositions()
{
	CViewComponent::RecalculatePositions();
}

void AS::Views::CViewLeaf::RegisterEventDelegates(EventDelegateCollection& delegates)
{
}

void AS::Views::CViewLeaf::RegisterPaintDelegates(PaintDelegateCollection& delegates)
{
}

void AS::Views::CViewLeaf::Show()
{
	CViewComponent::Show(); // Just register my paint handler.
}



