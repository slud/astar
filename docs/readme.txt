A*:
http://www.policyalmanac.org/games/aStarTutorial_pl.htm

OpenGL:

Wiki:
http://en.wikipedia.org/wiki/OpenGL

Pojecia:
Mesa 3D - otwartozrodlowa implementacja OpenGL. (10.03.2012 - czytalem, ze obecna wersja 8.0 obsluguje ogl 3.0)

Biblioteki:
gl.h - naglowki API opengl
glu.h - funkcje wyzszego poziomu, np. rysowanie kuli itp.
glm.h - matma dla ogl'a.
glew.h - dynamiczny menadzer rozszerzen
glut.h - multiplatformowe tworzenie okna itp.
freeglut.h - glut jest nierozwijany od jakiegos 99 roku, to jest jego nastepca.


Przestrzenie nazw:
// Jesli dane pliki nie beda braly udzialy w tworzeniu biblioteki, to nie ma sensu umieszczanie ich w ns.
global
{
	// AS_ do wprowadzenia po zatwierdzeniu API.
}

Zlote mysli:
Jesli wprowadzimy katalogowanie zrodel, to beda mogly istniec dwie takie samy nazwy plikow - pogubimy sie?
Jesli wprowadzimy przestrzenie nazw, to beda mogly istniec dwie klasy o takich samych nazwach - pogubimy sie?
Jesli wprowadzimy oba powyzsze rozwiazanie to zarobimy sie z porzadkowaniem tego balaganu ;]

Zasady projektu:
	Przedrostek stosowany w calym projekcie:
	AS_ - straznicy plikow naglowkowych: #ifndef AS_HEADER_H
	C - prefix nazwy klasy
	CT - prefix szablonu klasy
	S - struktura
	Singleton - suffix dla singletonow













