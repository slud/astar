#include "OpenGLRenderer.hpp"
#include "Framework/ASSDL.hpp"
#include "Settings/SettingsSimple.hpp"
#include "SDL_opengl.h"
#include "freeglut.h"
#include <boost/function.hpp>
#include <vector>
#include "IL/il.h"
#include "Helpers.hpp"
AS::Renderer::Helpers::CCube g_Cube(0.4f);

namespace Torus
{
	GLuint theTorus;

	/* Draw a torus */
	void torus(int numc, int numt)
	{
	   int i, j, k;
	   double s, t, x, y, z, twopi;

	   twopi = 2 * (double)22.0/7.0;
	   for (i = 0; i < numc; i++) {
		  glBegin(GL_QUAD_STRIP);
		  for (j = 0; j <= numt; j++) {
			 for (k = 1; k >= 0; k--) {
				s = (i + k) % numc + 0.5;
				t = j % numt;

				x = (1+.1*cos(s*twopi/numc))*cos(t*twopi/numt);
				y = (1+.1*cos(s*twopi/numc))*sin(t*twopi/numt);
				z = .1 * sin(s * twopi / numc);
				glVertex3f(x/1.0, y/1.0, z/1.0);
			 }
		  }
		  glEnd();
	   }
	}

	/* Create display list with Torus and initialize state*/
	void init(void)
	{
	   theTorus = glGenLists (1);
	   glNewList(theTorus, GL_COMPILE);
	   torus(8, 25);
	   glEndList();
	}

	void display(void)
	{
	   glCallList(theTorus);
	   glFlush();
	}
}

namespace AS
{
	namespace Rendering
	{
		std::vector<boost::function<void ()> > _2dPaintDelegates;
		std::vector<boost::function<void ()> > _3dPaintDelegates;
	}
}

int AS::Rendering::COpenGLRenderer::m_DisplayListId = 0;

AS::Rendering::COpenGLRenderer::COpenGLRenderer() :
	m_Height(static_cast<double>(AS::Settings::Settings.Video.Height)),
	m_Width(static_cast<double>(AS::Settings::Settings.Video.Width)),
	m_FovY(45.0),
	m_ScreenAspectRatio(static_cast<float>(m_Width/m_Height)),
	m_FramesPerSecond(60),
	m_FrameRate(1000/m_FramesPerSecond),
	m_Ticks(0)
{
}

void AS::Rendering::COpenGLRenderer::Add(RenderEventHandler callback)
{
	m_RenderingStack.push_back(callback);
}

int AS::Rendering::COpenGLRenderer::GetDisplayListId()
{
	return ++m_DisplayListId;
}

GLuint mTextureID;
void AS::Rendering::COpenGLRenderer::Initialize()
{
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(m_FovY, m_Width/m_Height, 0.01, 1000.0);
	//glOrtho( 0.0, AS::Settings::Settings.Video.Width, AS::Settings::Settings.Video.Height, 0.0, 1.0, -1.0 );
	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	//glClearDepth(0.f);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glShadeModel(GL_SMOOTH);
	glEnable(GL_DEPTH_TEST); // hidden surface removal
	glEnable(GL_CULL_FACE); // do not calculate inside of poly's
	glFrontFace(GL_CCW); // counter clock-wise polygons are out
	glClearColor(0.f, 0.f, 0.f, 1.f);
	//glEnable(GL_TEXTURE_2D);
	//glEnable(GL_ALPHA_TEST);
	//glEnable(GL_BLEND);
/*
	ilInit();
	ilClearColour( 255, 255, 255, 000 );
	ILuint imgID = 0;
    ilGenImages( 1, &imgID );
    ilBindImage( imgID );
	ilLoadImage( "Resources/Images/PlaybackControls/Play.png" );
	ilConvertImage( IL_RGBA, IL_UNSIGNED_BYTE );
	glGenTextures(1, &mTextureID);
	glBindTexture(GL_TEXTURE_2D, mTextureID);
	int BPP = ilGetInteger(IL_IMAGE_BPP);
	int Width = ilGetInteger(IL_IMAGE_WIDTH);
	int Height = ilGetInteger(IL_IMAGE_HEIGHT);
	int Format = ilGetInteger(IL_IMAGE_FORMAT);
	glTexImage2D( GL_TEXTURE_2D, 0, GL_RGBA, Width, Height, 0, GL_RGBA, GL_UNSIGNED_BYTE, (GLuint*)ilGetData() );
	//Set texture parameters
	glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
	glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
	glBindTexture( GL_TEXTURE_2D, NULL );

	//Delete file from memory
	ilDeleteImages( 1, &imgID );
	*/
	g_Cube.Initialize();
}

void AS::Rendering::COpenGLRenderer::Enable2d()
{
	//int vPort[4];
	//glGetIntegerv(GL_VIEWPORT, vPort);
	glMatrixMode(GL_PROJECTION);
	glPushMatrix();
	glLoadIdentity();
	glOrtho(0.0, m_Height, m_Width, 0.0, 1.0, -1.0);
	glMatrixMode(GL_MODELVIEW);
	glPushMatrix();
	glLoadIdentity();
	glScalef(1.0f/m_ScreenAspectRatio, m_ScreenAspectRatio, 0.0f);
}

void AS::Rendering::COpenGLRenderer::Disable2d()
{
	glPopMatrix();	
	glMatrixMode(GL_PROJECTION);
	glPopMatrix();   
	glMatrixMode(GL_MODELVIEW);
}

static int MoveABit()
{
	glTranslatef(0.0f,0.0f,-6.0f);
	glRotatef(45.0f, 0.0f, 1.0f, 0.0f);
	return 0;
}

void AS::Rendering::COpenGLRenderer::Render()
{
	if(m_FrameRate > (SDL_GetTicks() - m_Ticks))
		SDL_Delay(m_FrameRate - (SDL_GetTicks() - m_Ticks));
	m_Ticks = SDL_GetTicks();
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	glRotatef(0.24f, 1.0f,0.0f,0.0f);
	static int i = MoveABit();
	g_Cube.Draw();
	
	Enable2d();
	for(size_t i=0; i < _2dPaintDelegates.size(); i++)
	{
		_2dPaintDelegates[i]();
	}
	Disable2d();
	SDL_GL_SwapBuffers();
}

// http://lazyfoo.net/tutorials/OpenGL/02_matrices_and_coloring_polygons/index.php
// http://www.dimmension3.spine.pl/modules.php?name=Tutorials&wtd=show_tutorial&nr=22
// http://www.youtube.com/watch?v=FPA5-1kTRtI&feature=BFa&list=ULvCkrN6hH35M
// http://www.songho.ca/opengl/
// http://www.libsdl.org/docs/html/sdlmousebuttonevent.html
