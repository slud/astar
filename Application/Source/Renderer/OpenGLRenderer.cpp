#include "OpenGLRenderer.hpp"
#include "SDL_opengl.h"

void AS::Rendering::COpenGLRenderer::Initialize()
{
	glMatrixMode( GL_PROJECTION );
	glLoadIdentity();
	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	glClearColor( 0.f, 0.f, 0.f, 1.f );
}

void AS::Rendering::COpenGLRenderer::Render()
{
	glClear( GL_COLOR_BUFFER_BIT );
	glBegin( GL_QUADS );
		glVertex2f( -0.5f, -0.5f );
		glVertex2f(  0.5f, -0.5f );
		glVertex2f(  0.5f,  0.5f );
		glVertex2f( -0.5f,  0.5f );
	glEnd();
	SDL_GL_SwapBuffers();
}
