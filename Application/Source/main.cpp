#include "Application/Application.hpp"

//#include "Framework/Assert.hpp"
#include "Framework/NotifyStream.hpp"

#include <boost/signals2.hpp>
#include <fstream>
#include <string>
//#include <windows.h>

class R123
{
public:
	R123() {}
	~R123() {}

	void operator()(std::string const& arr)
	{
		std::ofstream out;
		out.open( "slot.txt", std::ios_base::app );
		//out << "This came from signal: \n";
		out << arr;
	}

};

int main(int argc, char *argv[])
{
	//CApplication application;

	int result = -1;
	//result = application.Start(argc, argv);

	R123 r;
	std::ofstream ofs( "ohmy.txt", std::ios_base::app );
	AS::CNotifyOutputFileStream<std::ofstream> nfs( ofs );
	nfs.TextChanged.Connect(r);
	nfs << "Piszemy " << "obok " << "siebie " << "kilka slowek. A na koniec liczba: " << 7 << "\n";
/*
	try
	{

	}
	catch(...)
	{
		MessageBox(0, (LPCWSTR)L"Wszystko OK", (LPCWSTR)L"Ekran SDL", MB_OK);
	}
*/
	return result;

}
