#include "Helpers.hpp"
#include "SDL_opengl.h"

AS::Renderer::Helpers::CCube::CCube(float length) :
	m_DisplayListId(-1),
	m_Length(length)
{
}

void AS::Renderer::Helpers::CCube::Draw()
{
   glCallList(m_DisplayListId);
   glFlush();
}

void AS::Renderer::Helpers::CCube::Initialize()
{
   m_DisplayListId = glGenLists(1);
   glNewList(m_DisplayListId, GL_COMPILE);
   Make(m_Length);
   glEndList();
}

void AS::Renderer::Helpers::CCube::Make(float length)
{
	float half = length / 2.0f;
	float x, y, z, xx, yy, zz;
	x = y = z = xx = yy = zz = 0.0f;

	xx = x-half;
	x = x+half;
	yy = y-half;
	y = y+half;
	zz = z-half;
	z = z+half;

    glBegin( GL_QUADS );                 /* Draw A Quad                      */
      glColor3f(   0.0f,  1.0f,  0.0f ); /* Set The Color To Green           */
      glVertex3f(  x, y, zz ); /* Top Right Of The Quad (Top)      */
      glVertex3f( xx, y, zz ); /* Top Left Of The Quad (Top)       */
      glVertex3f( xx, y,  z ); /* Bottom Left Of The Quad (Top)    */
      glVertex3f(  x, y,  z ); /* Bottom Right Of The Quad (Top)   */

      glColor3f(   1.0f,  0.5f,  0.0f ); /* Set The Color To Orange          */
      glVertex3f(  x, yy,  z ); /* Top Right Of The Quad (Botm)     */
      glVertex3f( xx, yy,  z ); /* Top Left Of The Quad (Botm)      */
      glVertex3f( xx, yy, zz ); /* Bottom Left Of The Quad (Botm)   */
      glVertex3f(  x, yy, zz ); /* Bottom Right Of The Quad (Botm)  */

      glColor3f(   1.0f,  0.0f,  0.0f ); /* Set The Color To Red             */
      glVertex3f(  x,  y,  z ); /* Top Right Of The Quad (Front)    */
      glVertex3f( xx,  y,  z ); /* Top Left Of The Quad (Front)     */
      glVertex3f( xx, yy,  z ); /* Bottom Left Of The Quad (Front)  */
      glVertex3f(  x, yy,  z ); /* Bottom Right Of The Quad (Front) */

      glColor3f(   1.0f,  1.0f,  0.0f ); /* Set The Color To Yellow          */
      glVertex3f(  x, yy, zz ); /* Bottom Left Of The Quad (Back)   */
      glVertex3f( xx, yy, zz ); /* Bottom Right Of The Quad (Back)  */
      glVertex3f( xx,  y, zz ); /* Top Right Of The Quad (Back)     */
      glVertex3f(  x,  y, zz ); /* Top Left Of The Quad (Back)      */

      glColor3f(   0.0f,  0.0f,  1.0f ); /* Set The Color To Blue            */
      glVertex3f( xx,  y,  z ); /* Top Right Of The Quad (Left)     */
      glVertex3f( xx,  y, zz ); /* Top Left Of The Quad (Left)      */
      glVertex3f( xx, yy, zz ); /* Bottom Left Of The Quad (Left)   */
      glVertex3f( xx, yy,  z ); /* Bottom Right Of The Quad (Left)  */

      glColor3f(   1.0f,  0.0f,  1.0f ); /* Set The Color To Violet          */
      glVertex3f(  x,  y, zz ); /* Top Right Of The Quad (Right)    */
      glVertex3f(  x,  y,  z ); /* Top Left Of The Quad (Right)     */
      glVertex3f(  x, yy,  z ); /* Bottom Left Of The Quad (Right)  */
      glVertex3f(  x, yy, zz ); /* Bottom Right Of The Quad (Right) */
    glEnd( );
}