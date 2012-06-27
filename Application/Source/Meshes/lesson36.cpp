/*This source code copyrighted by Lazy Foo' Productions (2004-2012)
and may not be redestributed without written permission.*/

//The headers
#include "SDL/SDL.h"
#include "SDL/SDL_opengl.h"

//Screen attributes
const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 480;
const int SCREEN_BPP = 32;

//The frame rate
const int FRAMES_PER_SECOND = 60;

//The attributes of the square
const int SQUARE_WIDTH = 20;
const int SQUARE_HEIGHT = 20;

//Event handler
SDL_Event event;

//The square
class Square
{
    private:
    //The offsets
    int x, y;

    //The velocity of the square
    int xVel, yVel;

    public:
    //Initializes
    Square();

    //Handles key presses
    void handle_input();

    //Moves the square
    void move();

    //Shows the square on the screen
    void show();
};

//The timer
class Timer
{
    private:
    //The clock time when the timer started
    int startTicks;

    //The ticks stored when the timer was paused
    int pausedTicks;

    //The timer status
    bool paused;
    bool started;

    public:
    //Initializes variables
    Timer();

    //The various clock actions
    void start();
    void stop();
    void pause();
    void unpause();

    //Gets the timer's time
    int get_ticks();

    //Checks the status of the timer
    bool is_started();
    bool is_paused();
};

bool init_GL()
{
    //Set clear color
    glClearColor( 0, 0, 0, 0 );

    //Set projection
    glMatrixMode( GL_PROJECTION );
    glLoadIdentity();
    glOrtho( 0, SCREEN_WIDTH, SCREEN_HEIGHT, 0, -1, 1 );

    //Initialize modelview matrix
    glMatrixMode( GL_MODELVIEW );
    glLoadIdentity();

    //If there was any errors
    if( glGetError() != GL_NO_ERROR )
    {
        return false;
    }

    //If everything initialized
    return true;
}

bool init()
{
    //Initialize SDL
    if( SDL_Init( SDL_INIT_EVERYTHING ) < 0 )
    {
        return false;
    }

    //Create Window
    if( SDL_SetVideoMode( SCREEN_WIDTH, SCREEN_HEIGHT, SCREEN_BPP, SDL_OPENGL ) == NULL )
    {
        return false;
    }

    //Initialize OpenGL
    if( init_GL() == false )
    {
        return false;
    }

    //Set caption
    SDL_WM_SetCaption( "OpenGL Test", NULL );

    return true;
}

void clean_up()
{
    //Quit SDL
    SDL_Quit();
}

Square::Square()
{
    //Initialize offsets
    x = 0;
    y = 0;

    //Initialize velocity
    xVel = 0;
    yVel = 0;
}

void Square::handle_input()
{
    //If a key was pressed
    if( event.type == SDL_KEYDOWN )
    {
        //Adjust the velocity
        switch( event.key.keysym.sym )
        {
            case SDLK_UP: yVel -= SQUARE_HEIGHT / 2; break;
            case SDLK_DOWN: yVel += SQUARE_HEIGHT / 2; break;
            case SDLK_LEFT: xVel -= SQUARE_WIDTH / 2; break;
            case SDLK_RIGHT: xVel += SQUARE_WIDTH / 2; break;
        }
    }
    //If a key was released
    else if( event.type == SDL_KEYUP )
    {
        //Adjust the velocity
        switch( event.key.keysym.sym )
        {
            case SDLK_UP: yVel += SQUARE_HEIGHT / 2; break;
            case SDLK_DOWN: yVel -= SQUARE_HEIGHT / 2; break;
            case SDLK_LEFT: xVel += SQUARE_WIDTH / 2; break;
            case SDLK_RIGHT: xVel -= SQUARE_WIDTH / 2; break;
        }
    }
}

void Square::move()
{
    //Move the square left or right
    x += xVel;

    //If the square went too far
    if( ( x < 0 ) || ( x + SQUARE_WIDTH > SCREEN_WIDTH ) )
    {
        //Move back
        x -= xVel;
    }

    //Move the square up or down
    y += yVel;

    //If the square went too far
    if( ( y < 0 ) || ( y + SQUARE_HEIGHT > SCREEN_HEIGHT ) )
    {
        //Move back
        y -= yVel;
    }
}

void Square::show()
{
    //Move to offset
    glTranslatef( x, y, 0 );

    //Start quad
    glBegin( GL_QUADS );

        //Set color to white
        glColor4f( 1.0, 1.0, 1.0, 1.0 );

        //Draw square
	    glVertex3f( 0,            0,             0 );
	    glVertex3f( SQUARE_WIDTH, 0,             0 );
	    glVertex3f( SQUARE_WIDTH, SQUARE_HEIGHT, 0 );
	    glVertex3f( 0,            SQUARE_HEIGHT, 0 );

    //End quad
    glEnd();

    //Reset
    glLoadIdentity();
}

Timer::Timer()
{
    //Initialize the variables
    startTicks = 0;
    pausedTicks = 0;
    paused = false;
    started = false;
}

void Timer::start()
{
    //Start the timer
    started = true;

    //Unpause the timer
    paused = false;

    //Get the current clock time
    startTicks = SDL_GetTicks();
}

void Timer::stop()
{
    //Stop the timer
    started = false;

    //Unpause the timer
    paused = false;
}

void Timer::pause()
{
    //If the timer is running and isn't already paused
    if( ( started == true ) && ( paused == false ) )
    {
        //Pause the timer
        paused = true;

        //Calculate the paused ticks
        pausedTicks = SDL_GetTicks() - startTicks;
    }
}

void Timer::unpause()
{
    //If the timer is paused
    if( paused == true )
    {
        //Unpause the timer
        paused = false;

        //Reset the starting ticks
        startTicks = SDL_GetTicks() - pausedTicks;

        //Reset the paused ticks
        pausedTicks = 0;
    }
}

int Timer::get_ticks()
{
    //If the timer is running
    if( started == true )
    {
        //If the timer is paused
        if( paused == true )
        {
            //Return the number of ticks when the timer was paused
            return pausedTicks;
        }
        else
        {
            //Return the current time minus the start time
            return SDL_GetTicks() - startTicks;
        }
    }

    //If the timer isn't running
    return 0;
}

bool Timer::is_started()
{
    return started;
}

bool Timer::is_paused()
{
    return paused;
}

int main( int argc, char *argv[] )
{
    //Quit flag
    bool quit = false;

    //Initialize
    if( init() == false )
    {
        return 1;
    }

    //Our square object
    Square square;

    //The frame rate regulator
    Timer fps;

	//Wait for user exit
	while( quit == false )
	{
        //Start the frame timer
        fps.start();

        //While there are events to handle
		while( SDL_PollEvent( &event ) )
		{
            //Handle key presses
            square.handle_input();

			if( event.type == SDL_QUIT )
			{
                quit = true;
            }
		}

	    //Move the square
	    square.move();

	    //Clear the screen
	    glClear( GL_COLOR_BUFFER_BIT );

	    //Show the square
	    square.show();

	    //Update screen
	    SDL_GL_SwapBuffers();

        //Cap the frame rate
        if( fps.get_ticks() < 1000 / FRAMES_PER_SECOND )
        {
            SDL_Delay( ( 1000 / FRAMES_PER_SECOND ) - fps.get_ticks() );
        }
	}

	//Clean up
	clean_up();

	return 0;
}
