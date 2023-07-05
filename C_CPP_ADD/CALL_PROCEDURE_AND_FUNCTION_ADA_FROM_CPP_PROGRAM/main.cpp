/*
*    TO BUILD AND USE IT :
*    gnatmake -c ada_package
*    g++ -g -Wall -ansi -pedantic -std=c++0x -c *.cpp
*    gnatbind -n ada_package
*    gnatlink ada_package -o main --LINK=g++ -lstdc++ main.o Calculs.o
*    main.exe in WINDOWS
*    ./main   in linux
*/

#include "Calculs.hpp"

int main (int argc, char ** argv) 
{
	Calculs * cal = new Calculs();
	cal->run();
	delete cal;
	cal = nullptr;
	return 0;
}
