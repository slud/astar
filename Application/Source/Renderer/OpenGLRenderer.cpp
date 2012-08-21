#include "OpenGLRenderer.hpp"
#include "Framework/ASSDL.hpp"
#include "Settings/SettingsSimple.hpp"
#include "SDL_opengl.h"
#include "freeglut.h"

extern AS::System::CSettingsSimple gSettings;

void AS::Rendering::COpenGLRenderer::Initialize()
{
	glutInitContextVersion(2, 1);
	glClearColor(0.f, 0.f, 0.f, 1.f);
	glViewport(0, 0, 800, 450);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(90.0,800.0/450.0, 0.01, 1000.0);
	glMatrixMode( GL_MODELVIEW );
	gluLookAt(5.0, 5.0, 5.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);
}

static int ticks = 0;

void AS::Rendering::COpenGLRenderer::Render()
{
	glMatrixMode( GL_MODELVIEW );
		glLoadIdentity();
	gluLookAt(gSettings.Scene.ChainedCamera.eyex, gSettings.Scene.ChainedCamera.eyey, gSettings.Scene.ChainedCamera.eyez, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);

	if(1000/33 > (SDL_GetTicks() - ticks))
		return;

	ticks = SDL_GetTicks();

	glClear( GL_COLOR_BUFFER_BIT );
	glBegin( GL_QUADS );
		glColor3f(1.0f, 0.0f, 0.0f);
		glVertex3f(-1.0f, 0.0f, -1.0f);
		glColor3f(1.0f, 1.0f, 0.0f);
		glVertex3f(1.0f, 0.0f, -1.0f);
		glColor3f(0.0f, 1.0f, 0.0f);
		glVertex3f(1.0f, 0.0f, 1.0f);
		glColor3f(0.0f, 1.0f, 1.0f);
		glVertex3f(-1.0f, 0.0f, 1.0f);
	glEnd();
	SDL_GL_SwapBuffers();
}

// http://lazyfoo.net/tutorials/OpenGL/02_matrices_and_coloring_polygons/index.php
// http://www.dimmension3.spine.pl/modules.php?name=Tutorials&wtd=show_tutorial&nr=22
// http://www.youtube.com/watch?v=FPA5-1kTRtI&feature=BFa&list=ULvCkrN6hH35M
// http://www.songho.ca/opengl/
// http://www.libsdl.org/docs/html/sdlmousebuttonevent.html
