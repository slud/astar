A*:
http://www.policyalmanac.org/games/aStarTutorial_pl.htm

OpenGL:

Wiki:
http://en.wikipedia.org/wiki/OpenGL

Repo url:
git@github.com:slud/astar.git - czy jakos tak


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
		E - enum
		c_ - unmutable object
		e_ - pole na liscie enum
		m_ member
		m_p - member pointer
		m_e - enum member
		par_ - parametr funkcji/metody ale tylko w definicji!
		Singleton - suffix dla singletonow - dodajemy do nazwy klasy, wtedy latwo znajdujemy wszystkie singletony roznych typow
	Obowiazauje CamelCase w kodzie
	Typy wskaznikowe: T* ptr; 
	Plik binarki kopiowany jest z katalogu ROOT_DIR/BIN_DIR do ROOT_DIR


Uwagi, obserwacje, notatki:

	Prosze zwrocic uwaga na singletony i sposob ich implementacji - static init/deinit fiasco.
		Singleton jesli tworzy obiekt na stercie - teoretycznie wyciek pamieci, ale tylko wtedy gdy jego destruktor jest potrzebny.
		W p.p. system i tak odzyska pamiec za nas.
	Zmiana nazwy pliku tylko w sytuacji gdy wiesz co trzeba pozniej zrobic za pomoca git'a!
	GCC probably supports thread-safe static initialization.



Pytania, ktore sie nasunely podczas pracy nad projektem:

	Czy musimy dostarczac dwa rodzaje metoda: jedna ktora zwraca "cos&" i druga, ktora zwraca "const cos&"?
	Jak wyglada uklad pamieci - znaczenie kolejnosci pol w klasie/strukturze?
		- struktura: chyba zagwarantowane, ze tak jak leza.
		- klasa: zalezy od implementacji?
	Czy dlugie nazwy w kodzie sa optymalizowane? Czy kod wynikowy nie jest przez to wiekszy?











