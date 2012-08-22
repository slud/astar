#include "OpenGLRenderer.hpp"
#include "Framework/ASSDL.hpp"
#include "Settings/SettingsSimple.hpp"
#include "SDL_opengl.h"
#include "freeglut.h"

#include "Libraries/stb_font_courier_36_usascii.inl"

extern AS::Settings::CSettingsSimple gSettings;


static stb_fontchar fontdata[STB_SOMEFONT_NUM_CHARS];

static void init(void)
{
    // optionally replace both STB_SOMEFONT_BITMAP_HEIGHT with STB_SOMEFONT_BITMAP_HEIGHT_POW2
    static unsigned char fontpixels[STB_SOMEFONT_BITMAP_HEIGHT][STB_SOMEFONT_BITMAP_WIDTH];
    STB_SOMEFONT_CREATE(fontdata, fontpixels, STB_SOMEFONT_BITMAP_HEIGHT);
    //... create texture ...
    // for best results rendering 1:1 pixels texels, use nearest-neighbor sampling
    // if allowed to scale up, use bilerp
}

static void draw_string_integer(int x, int y, char *str) // draw with top-left point x,y
{
    //... use texture ...
    //... turn on alpha blending and gamma-correct alpha blending ...
    glBegin(GL_QUADS);
    while (*str) {
        int char_codepoint = *str++;
        stb_fontchar *cd = &fontdata[char_codepoint - STB_SOMEFONT_FIRST_CHAR];
		glColor3f(1.0f, 0.0f, 0.0f);
        //glTexCoord2f(cd->s0, cd->t0);
		glVertex2i(x + cd->x0, y + cd->y0);
        //glTexCoord2f(cd->s1, cd->t0);
		glVertex2i(x + cd->x1, y + cd->y0);
        //glTexCoord2f(cd->s1, cd->t1);
		glVertex2i(x + cd->x1, y + cd->y1);
        //glTexCoord2f(cd->s0, cd->t1);
		glVertex2i(x + cd->x0, y + cd->y1);
        // if bilerping, in D3D9 you'll need a half-pixel offset here for 1:1 to behave correct
        x += cd->advance_int;
    }
    glEnd();
}

void AS::Rendering::COpenGLRenderer::Initialize()
{
	init();
	glutInitContextVersion(2, 1);
	glClearColor(0.f, 0.f, 0.f, 1.f);
	//glViewport(0, 0, 800, 450);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(45.0,800.0/450.0, 0.01, 1000.0);
	glMatrixMode( GL_MODELVIEW );
	gluLookAt(0.0, 5.0, 5.0, 0.0, 0.0, 0.0, 0.0, 0.0, -1.0);
}

static int ticks = 0;

void AS::Rendering::COpenGLRenderer::Render()
{
	if(1000/33 > (SDL_GetTicks() - ticks))
		return;

	ticks = SDL_GetTicks();

	draw_string_integer(0,0,"hello world");
/*
	glPushMatrix();
	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	gluLookAt(0.0, gSettings.Scene.TargetCamera.EyeZ, gSettings.Scene.TargetCamera.EyeZ, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);
	glRotatef(45.0f, 0.0f, 1.0f, 0.0f);

	glClear( GL_COLOR_BUFFER_BIT );
	
	glPopMatrix();
	glRotatef(2.4f, 0.0f, 1.0f, 0.0f);
	// sun
	glBegin( GL_QUADS );
		glColor3f(1.0f, 0.0f, 0.0f);
		glVertex3f(-1.0f, 0.0f, 1.0f);
		glColor3f(1.0f, 1.0f, 0.0f);
		glVertex3f(1.0f, 0.0f, 1.0f);
		glColor3f(0.0f, 1.0f, 0.0f);
		glVertex3f(1.0f, 0.0f, -1.0f);
		glColor3f(0.0f, 1.0f, 1.0f);
		glVertex3f(-1.0f, 0.0f, -1.0f);
	glEnd();
	

	glPushMatrix();
	glRotatef(15.4f, 1.0f, 0.0f, 0.0f);
	glTranslatef(-4.0f, 0.0f, 0.0f);
	// earth
	glBegin( GL_QUADS );
		glColor3f(1.0f, 0.0f, 0.0f);
		glVertex3f(-1.0f, 0.0f, 1.0f);
		glColor3f(1.0f, 1.0f, 0.0f);
		glVertex3f(1.0f, 0.0f, 1.0f);
		glColor3f(0.0f, 1.0f, 0.0f);
		glVertex3f(1.0f, 0.0f, -1.0f);
		glColor3f(0.0f, 1.0f, 1.0f);
		glVertex3f(-1.0f, 0.0f, -1.0f);
	glEnd();
	glPopMatrix();
	*/

/*
	glBegin( GL_QUADS );
		glColor3f(1.0f, 0.0f, 0.0f);
		glVertex3f(-4.0f, 0.0f, 1.0f);
		glColor3f(1.0f, 0.0f, 0.0f);
		glVertex3f(-2.0f, 0.0f, 1.0f);
		glColor3f(0.0f, 1.0f, 0.0f);
		glVertex3f(-2.0f, 0.0f, -1.0f);
		glColor3f(0.0f, 1.0f, 0.0f);
		glVertex3f(-4.0f, 0.0f, -1.0f);
	glEnd();
*/
	SDL_GL_SwapBuffers();
}

// http://lazyfoo.net/tutorials/OpenGL/02_matrices_and_coloring_polygons/index.php
// http://www.dimmension3.spine.pl/modules.php?name=Tutorials&wtd=show_tutorial&nr=22
// http://www.youtube.com/watch?v=FPA5-1kTRtI&feature=BFa&list=ULvCkrN6hH35M
// http://www.songho.ca/opengl/
// http://www.libsdl.org/docs/html/sdlmousebuttonevent.html
