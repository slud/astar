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
// Jesli dane pliki nie beda braly udzialy w tworzeniu biblioteki (nie sa interfejsem), to nie ma sensu umieszczanie ich w ns.
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
		//CT - prefix szablonu klasy
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
	Nie uzywac singletonow w destruktorach innych singletonow.
	Szablon komentarzy dla plikow naglowkowych zawiera komentarze. Dodajac nowy plik usuwamy komentarze, a w razie potrzeby dodajemy je wg schematu. W przypadku zmiany redukuje to liczbe plikow, ktore trzeba by bylo poddac obrobce.
	TODO [USER][DATE]: Description
	Szablon referencji: [Unikatowy skrot z duzych liter] Tytuł URL
	Naglowki dodajemy bez podawania sciezek. Powodujemy tym samym, ze wszystkie pliki musza miec unikatowa nazwe. Przyda sie to przy wyszukiwaniu klasy posrod wszystkich plikow. Z drugiej strony jesli beda dwie klasy o takich samych nazwach ale w innych przestrzeniach nazw to co wtedy? Nazwac plik najpierw z nazwa przestrzeni a potem klasy? Z innej jeszcze strony jesli podawalbym konkretne sciezki do plikow naglowkowych to uniknalbym niejednoznacznosci bo np ktos nadal taka sama nazwe juz.
	Pliki naglowkowe posiadaja rozszerzenie hpp jesli zawieraja instrukcje z C++, h gdy maja tylko insrukcje z C.


Uwagi, obserwacje, notatki:

	Prosze zwrocic uwaga na singletony i sposob ich implementacji - static init/deinit fiasco.
		Singleton jesli tworzy obiekt na stercie - teoretycznie wyciek pamieci, ale tylko wtedy gdy jego destruktor jest potrzebny.
		W p.p. system i tak odzyska pamiec za nas.
	Zmiana nazwy pliku tylko w sytuacji gdy wiesz co trzeba pozniej zrobic za pomoca git'a!
	GCC probably supports thread-safe static initialization.
	http://cpptruths.blogspot.com/2007/02/ownership-idioms-move-constructor-idiom.html pare ciekawych idiomow.



Pytania, ktore sie nasunely podczas pracy nad projektem:

	Czy musimy dostarczac dwa rodzaje metoda: jedna ktora zwraca "cos&" i druga, ktora zwraca "const cos&"?
	Jak wyglada uklad pamieci - znaczenie kolejnosci pol w klasie/strukturze?
		- struktura: chyba zagwarantowane, ze tak jak leza.
		- klasa: zalezy od implementacji?
	Czy dlugie nazwy w kodzie sa optymalizowane? Czy kod wynikowy nie jest przez to wiekszy?
	Jak nazywac obiekty?
		Zaczynajac od lewej uzywajac najpierw najbardziej abstrakcyjnych pojec
		np.: CEventHandlerMainWindow czy od najbardziej konkretnych np.: CMainWindowEventHandler?
	Jak obslugiwac "puste" referencje?
		Moze tak.: assert(&refToObject)?
		Skoro jest mozliwe cos takiego:
			Pisarz* pPis = NULL;
			Pisarz& pis = *pPis;
		Blad (SEGFAULT) zostanie wychwycony dopiero podczas wykonania.
		- Jest to nielegalna konstrukcja, mimo, ze kompilator na to pozwala.
		- Idea referencji jest to, ze referuje istniejacy l-value obiekt.
		- C++ FAQ http://www.parashift.com/c++-faq-lite/references.html [8.7]
	Jesli mamy wielowatkowe srodowisko to czy obiekt powinien miec funkcje inline?
	Jaka powinna byc kolejnosc dolaczania plikow naglowkowych? Najpierw biblioteki a potem lokalne?
		1. corresponded header file
		2. necessary project headers
		3. 3rd party libraries headers
		4. standard libraries headers
		5. system headers
		In that order you will not miss any of your header files that forgot to include libraries by their own (http://stackoverflow.com/questions/614302/c-header-order).
	Gdy tworzymy wlasny obiekt-kolekcje to czy tworzymy interfejs zgodny z STL, czyli zamiast Add definiujemy push_back?


TODO:

	Zapoznac sie z precompiled headers.







