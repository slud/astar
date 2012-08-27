#include "OpenGLRenderer.hpp"
#include "Framework/ASSDL.hpp"
#include "Settings/SettingsSimple.hpp"
#include "SDL_opengl.h"
#include "freeglut.h"

#include "Libraries/stb_font_courier_36_usascii.inl"

extern AS::Settings::CSettingsSimple gSettings;


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

static void draw_string_integer(int x, int y, char *str) // draw with top-left point x,y
{
    //... use texture ...
	glBindTexture(GL_TEXTURE_2D, gTextureID);
    //... turn on alpha blending and gamma-correct alpha blending ...
	//glEnable(GL_ALPHA_TEST);
	//glEnable(GL_BLEND);
    glBegin(GL_QUADS);
    while (*str) {
        int char_codepoint = *str++;
        stb_fontchar *cd = &fontdata[char_codepoint - STB_SOMEFONT_FIRST_CHAR];
		//glColor3f(1.0f, 0.0f, 0.0f);
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

void AS::Rendering::COpenGLRenderer::Initialize()
{
	init();
	//glutInitContextVersion(2, 1);
	glClearColor(0.f, 0.f, 0.f, 1.f);
	//glViewport(0, 0, 800, 450);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(45.0,800.0/450.0, 0.01, 1000.0);
	//glOrtho( 0.0, gSettings.Video.Width, gSettings.Video.Height, 0.0, 1.0, -1.0 );
	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	//gluLookAt(0.0, 5.0, 5.0, 0.0, 0.0, 0.0, 0.0, 0.0, -1.0);
	glEnable( GL_TEXTURE_2D );
}

static int ticks = 0;

static void DrawCube()
{
	glBegin( GL_QUADS );
		// top red
		glColor3f(1.0f, 0.0f, 0.0f);
		glVertex3f(-1.0f, 1.0f, -1.0f);
		glVertex3f(1.0f, 1.0f, -1.0f);
		glVertex3f(1.0f, 1.0f, 1.0f);
		glVertex3f(-1.0f, 1.0f, 1.0f);
		// bottom green 
		glColor3f(0.0f, 1.0f, 0.0f);
		glVertex3f(-1.0f, -1.0f, 1.0f);
		glVertex3f(1.0f, -1.0f, 1.0f);
		glVertex3f(1.0f, -1.0f, -1.0f);
		glVertex3f(-1.0f, -1.0f, -1.0f);
		// side xy blue
		glColor3f(0.0f, 0.0f, 1.0f);
		glVertex3f(-1.0f, -1.0f, -1.0f);
		glVertex3f(1.0f, -1.0f, -1.0f);
		glVertex3f(1.0f, 1.0f, -1.0f);
		glVertex3f(-1.0f, 1.0f, -1.0f);

	glEnd();
}

static void DrawTester(float xs, float ys, float zs)
{
	float xo = xs;
	float yo = ys;
	float zo = zs;
	int id = gTextureID;
	//int id = gCheckerID;
	glBindTexture(GL_TEXTURE_2D, id);
	glBegin( GL_QUADS );
		glColor3f(1.0f, 0.0f, 0.0f);
		glTexCoord2f(0.0f,1.0f);
		glVertex3f(-1.0f+xo, -1.0f+yo, 1.0f+zo);

		//glColor3f(0.0f, 1.0f, 0.0f);
		glTexCoord2f(1.0f,1.0f);
		glVertex3f(1.0f+xo, -1.0f+yo, 1.0f+zo);

		//glColor3f(0.0f, 0.0f, 1.0f);
		glTexCoord2f(1.0f,0.0f);
		glVertex3f(1.0f+xo, 1.0f+yo, 1.0f+zo);

		//glColor3f(0.0f, 0.0f, 0.0f);
		glTexCoord2f(0.0f,0.0f);
		glVertex3f(-1.0f+xo, 1.0f+yo, 1.0f+zo);
	glEnd();
}
float aspect = 800.0f / 450.0f;
void glEnable2D()
{
	int vPort[4];
  
	glDisable(GL_DEPTH_TEST);

	glGetIntegerv(GL_VIEWPORT, vPort);
  
	glMatrixMode(GL_PROJECTION);
	glPushMatrix();
	glLoadIdentity();
  
	glOrtho(0.0, 450.0, 0.0, 800.0, 1.0, -1.0);
	//glOrtho(-aspect, aspect, -1, 1, -1, 1);
	//glOrtho(0, aspect, 0, 1, -1, 1);
	glMatrixMode(GL_MODELVIEW);
	glPushMatrix();
	glLoadIdentity();
}

void glDisable2D()
{
	glMatrixMode(GL_PROJECTION);
	glPopMatrix();   
	glMatrixMode(GL_MODELVIEW);
	glPopMatrix();	
	glEnable(GL_DEPTH_TEST);
}
double ar = 800.0/450.0;
float x = 40.00f;
void AS::Rendering::COpenGLRenderer::Render()
{
	if(1000/33 > (SDL_GetTicks() - ticks))
		return;

	ticks = SDL_GetTicks();

	glClear( GL_COLOR_BUFFER_BIT );

	
	glTranslatef(0.0f,0.0f,-6.0f);
	static float angle1 = 2.4f;
	angle1 += 2.4f;
	//glLoadIdentity();
	glRotatef(angle1, 0.0f, 1.0f, 0.0f);
	DrawCube();
	glLoadIdentity();
	glEnable2D();
	//glScalef(0.05f,0.05f,0.05f);
	//int id = gTextureID;
	int id = gCheckerID;
	glBindTexture(GL_TEXTURE_2D, id);
	glBegin(GL_QUADS);
		glTexCoord2f(0.0f, 1.0f); 
									glVertex2f(0.0f, 0.0f);
		glTexCoord2f(1.0f, 1.0f); 
									glVertex2f(x/aspect, 0.0f);
		glTexCoord2f(1.0f, 0.0f); 
									glVertex2f(x/aspect, x*aspect);
		glTexCoord2f(0.0f, 0.0f); 
									glVertex2f(0.0f    , x*aspect);

	glEnd();
	//draw_string_integer(0,0,"hello world");
	glDisable2D();
	

	//glLoadIdentity();
	//DrawTester(0.0,0.0,-6.0);

	
	//glTranslatef(0.0f,0.0f,-6.0f);
	//draw_string_integer(0,0,"hello world");
	//glScalef(0.05f,0.05f,0.05f);
	//glRotatef(180.0f, 1.0f, 0.0f, 0.0f);
	//draw_string_float(0.0f,0.0f,"bebebe kokoko");
/*
	glMatrixMode( GL_MODELVIEW );
	glLoadIdentity();
	gluLookAt(0.0, gSettings.Scene.TargetCamera.EyeY, gSettings.Scene.TargetCamera.EyeZ, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);
	glRotatef(45.0f, 0.0f, 1.0f, 0.0f);

	
	glPushMatrix();
	static float angle1 = 2.4f;
	angle1 += 2.4f;
	//glLoadIdentity();
	glRotatef(angle1, 0.0f, 1.0f, 0.0f);
	DrawCube();
	*/
	/*
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
	static float angle2 = 2.4f;
	angle2 += 9.6f;
	glTranslatef(-4.0f, 0.0f, 0.0f);
	glRotatef(angle2, 0.0f, 1.0f, 0.0f);
	
	// earth
	glBegin( GL_QUADS );
		glColor3f(0.5f, 0.5f, 0.5f);
		glVertex3f(-1.0f, 0.0f, 1.0f);
		glColor3f(0.5f, 1.0f, 0.0f);
		glVertex3f(1.0f, 0.0f, 1.0f);
		glColor3f(0.0f, 1.0f, 0.5f);
		glVertex3f(1.0f, 0.0f, -1.0f);
		glColor3f(1.0f, 1.0f, 1.0f);
		glVertex3f(-1.0f, 0.0f, -1.0f);
	glEnd();
	glPopMatrix();
	*/
	//glPopMatrix();

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
