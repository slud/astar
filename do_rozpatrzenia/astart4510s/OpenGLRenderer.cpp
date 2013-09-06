#include "OpenGLRenderer.hpp"
#include "Framework/ASSDL.hpp"
#include "Settings/SettingsSimple.hpp"
#include "SDL_opengl.h"
#include "freeglut.h"
#include <boost/function.hpp>
#include <vector>

#include "Libraries/stb_font_courier_36_usascii.inl"
#include "IL/il.h"


extern AS::Settings::CSettingsSimple gSettings;

namespace AS
{
	namespace Rendering
	{
		std::vector<boost::function<void ()> > g_2dPaintDelegates;
		std::vector<boost::function<void ()> > g_3dPaintDelegates;
	}
}

void AS::Rendering::COpenGLRenderer::Add(RenderEventHandler callback)
{
	m_RenderingStack.push_back(callback);
}

static stb_fontchar fontdata[STB_SOMEFONT_NUM_CHARS];
static GLuint gTextureID = 0;
static GLuint gCheckerID = 0;
static GLuint gChecker[128*128];
static void init(void)
{
	for(int i=0; i<128*128; i++)
	{
		GLubyte* colors = (GLubyte*)&gChecker[ i ];
       //If the 5th bit of the x and y offsets of the pixel do not match
        if( i / 128 & 16 ^ i % 128 & 16 )
        {
            //Set pixel to white
            colors[ 0 ] = 0xFF;
            colors[ 1 ] = 0xFF;
            colors[ 2 ] = 0xFF;
            colors[ 3 ] = 0xFF;
        }
        else
        {
            //Set pixel to red
            colors[ 0 ] = 0xFF;
            colors[ 1 ] = 0x00;
            colors[ 2 ] = 0x00;
            colors[ 3 ] = 0xFF;
        }
	}
    // optionally replace both STB_SOMEFONT_BITMAP_HEIGHT with STB_SOMEFONT_BITMAP_HEIGHT_POW2
    static GLubyte fontpixels[STB_SOMEFONT_BITMAP_HEIGHT_POW2][STB_SOMEFONT_BITMAP_WIDTH];
	//GLuint fontpixels1[STB_SOMEFONT_BITMAP_HEIGHT_POW2][STB_SOMEFONT_BITMAP_WIDTH] = {0};
    STB_SOMEFONT_CREATE(fontdata, fontpixels, STB_SOMEFONT_BITMAP_HEIGHT_POW2);
    //... create texture ...
	glGenTextures(1, &gTextureID);
	glBindTexture(GL_TEXTURE_2D, gTextureID );
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, STB_SOMEFONT_BITMAP_WIDTH, STB_SOMEFONT_BITMAP_HEIGHT_POW2, 0, GL_RED, GL_UNSIGNED_BYTE, fontpixels );
	glBindTexture(GL_TEXTURE_2D, NULL);

	glGenTextures(1, &gCheckerID);
	glBindTexture(GL_TEXTURE_2D, gCheckerID );
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 128, 128, 0, GL_RGBA, GL_UNSIGNED_BYTE, gChecker );
	glBindTexture(GL_TEXTURE_2D, NULL);
    // for best results rendering 1:1 pixels texels, use nearest-neighbor sampling
    // if allowed to scale up, use bilerp
}
struct rect
{
	int height;
	int width;
};

rect calc_string_rect(const char *str)
{
	int width = 0;
	int height =0;
    while (*str) {
        int char_codepoint = *str++;
        stb_fontchar *cd = &fontdata[char_codepoint - STB_SOMEFONT_FIRST_CHAR];
		width += cd->advance_int;
		int max = cd->y1-cd->y0;
		if(max>height)
			height=max;
    }
	rect r;
	r.height=height;
	r.width=width;
	return r;
}

static void draw_string_integer(int x, int y, char *str) // draw with top-left point x,y
{
    //... use texture ...
	glBindTexture(GL_TEXTURE_2D, gTextureID);
    //... turn on alpha blending and gamma-correct alpha blending ...
	//glEnable(GL_ALPHA_TEST);
	//glEnable(GL_BLEND);
	int width = 0;
	int height =0;
    glBegin(GL_QUADS);
    while (*str) {
        int char_codepoint = *str++;
        stb_fontchar *cd = &fontdata[char_codepoint - STB_SOMEFONT_FIRST_CHAR];
		////glColor3f(1.0f, 0.0f, 0.0f);
											glTexCoord2f(cd->s0, cd->t0);
		glVertex2i(x + cd->x0, y + cd->y0); 
											glTexCoord2f(cd->s1, cd->t0);
		glVertex2i(x + cd->x1, y + cd->y0);
											glTexCoord2f(cd->s1, cd->t1);
		glVertex2i(x + cd->x1, y + cd->y1);
											glTexCoord2f(cd->s0, cd->t1);
		glVertex2i(x + cd->x0, y + cd->y1);
        // if bilerping, in D3D9 you'll need a half-pixel offset here for 1:1 to behave correct
        x += cd->advance_int;

		width += cd->x1-cd->x0;
		int max = cd->y1-cd->y0;
		if(max>height)
			height=max;
    }
    glEnd();
}

static void draw_string_float(float x, float y, char *str) // draw with top-left point x,y
{
    //... use texture ...
    //... turn on alpha blending and gamma-correct alpha blending ...
	glBindTexture(GL_TEXTURE_2D, gTextureID);
    glBegin(GL_QUADS);
    while (*str) {
        int char_codepoint = *str++;
        stb_fontchar *cd = &fontdata[char_codepoint - STB_SOMEFONT_FIRST_CHAR];
        glTexCoord2f(cd->s0f, cd->t0f); glVertex2f(x + cd->x0f, y + cd->y0f);
        glTexCoord2f(cd->s1f, cd->t0f); glVertex2f(x + cd->x1f, y + cd->y0f);
        glTexCoord2f(cd->s1f, cd->t1f); glVertex2f(x + cd->x1f, y + cd->y1f);
        glTexCoord2f(cd->s0f, cd->t1f); glVertex2f(x + cd->x0f, y + cd->y1f);
        // if bilerping, in D3D9 you'll need a half-pixel offset here for 1:1 to behave correct
        x += cd->advance;
    }
    glEnd();
}

GLuint mTextureID = 0;
void AS::Rendering::COpenGLRenderer::Initialize()
{
	//init();
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(45.0,800.0/450.0, 0.01, 1000.0);
	//glOrtho( 0.0, gSettings.Video.Width, gSettings.Video.Height, 0.0, 1.0, -1.0 );
	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	//glClearDepth(0.f);
	//glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	//glShadeModel(GL_SMOOTH);
	//glEnable(GL_DEPTH_TEST); // hidden surface removal
	//glEnable(GL_CULL_FACE); // do not calculate inside of poly's
	//glFrontFace(GL_CCW); // counter clock-wise polygons are out
	glClearColor(0.f, 0.f, 0.f, 1.f);
	glEnable(GL_TEXTURE_2D);
	glEnable(GL_ALPHA_TEST);
	glEnable(GL_BLEND);
	glBlendFunc( GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA );
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
}

static int ticks = 0;

void glEnable2D()
{
	static const GLdouble w = 800.0;
	static const GLdouble h = 450.0;
	//glDisable(GL_DEPTH_TEST);
	//int vPort[4];
	//glGetIntegerv(GL_VIEWPORT, vPort);
	glMatrixMode(GL_PROJECTION);
	glPushMatrix();
	glLoadIdentity();
	glOrtho(0.0, h, w, 0.0, 1.0, -1.0);
	glMatrixMode(GL_MODELVIEW);
	glPushMatrix();
	glLoadIdentity();
	static GLfloat ar = static_cast<GLfloat>(w/h);
	glScalef(1.0f/ar, ar, 0.0f);
}

void glDisable2D()
{
	glPopMatrix();	
	glMatrixMode(GL_PROJECTION);
	glPopMatrix();   
	glMatrixMode(GL_MODELVIEW);
	//glEnable(GL_DEPTH_TEST);
}

void AS::Rendering::COpenGLRenderer::Render()
{
	if(1000/33 > (SDL_GetTicks() - ticks))
		return;
	ticks = SDL_GetTicks();
	glClear( GL_COLOR_BUFFER_BIT );
	glEnable2D();
	//glBindTexture(GL_TEXTURE_2D, gCheckerID);
	glBindTexture(GL_TEXTURE_2D, mTextureID);
        glBegin( GL_QUADS );
            glTexCoord2f( 0.f, 0.f ); glVertex2f(           0.f,            0.f );
            glTexCoord2f( 1.f, 0.f ); glVertex2f( 64.0f,            0.f );
            glTexCoord2f( 1.f, 1.f ); glVertex2f( 64.0f, 64.0f );
            glTexCoord2f( 0.f, 1.f ); glVertex2f(           0.f, 64.0f );
        glEnd();
		
	for(size_t i=0; i<g_2dPaintDelegates.size(); i++)
	{
		g_2dPaintDelegates[i]();
	}
	
	/*
	glPushMatrix();
	static float angle3 = 1.4f;
	angle3 += 2.4f;
	//glRotatef(angle3, 1.0f, 0.0f, 0.0f);
	char txt[] = "000-000-000";
	rect r = calc_string_rect(txt);
	draw_string_integer((800-r.width)/2,(450-r.height)/2,txt);
	glPopMatrix();
	int id = gCheckerID;
	glBindTexture(GL_TEXTURE_2D, id);
	glBegin(GL_QUADS);
		glTexCoord2f(0.0f, 1.0f); 
									glVertex3f(0.0f, 0.0f,0.0f);
		glTexCoord2f(1.0f, 1.0f); 
									glVertex3f(x/aspect, 0.0f,0.0f);
		glTexCoord2f(1.0f, 0.0f); 
									glVertex3f(x/aspect, x*aspect,0.0f);
		glTexCoord2f(0.0f, 0.0f); 
									glVertex3f(0.0f    , x*aspect,0.0f);

	glEnd();
	*/
	glDisable2D();
	SDL_GL_SwapBuffers();
}

// http://lazyfoo.net/tutorials/OpenGL/02_matrices_and_coloring_polygons/index.php
// http://www.dimmension3.spine.pl/modules.php?name=Tutorials&wtd=show_tutorial&nr=22
// http://www.youtube.com/watch?v=FPA5-1kTRtI&feature=BFa&list=ULvCkrN6hH35M
// http://www.songho.ca/opengl/
// http://www.libsdl.org/docs/html/sdlmousebuttonevent.html
