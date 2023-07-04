/*
*    TO BUILD AND USE IT :
*    gnatmake -c ada_package
*    g++ -g -Wall -ansi -pedantic -std=c++0x -c main.cpp
*    gnatbind -n ada_package
*    gnatlink ada_package -o main --LINK=g++ -lstdc++ main.o
*    main.exe in WINDOWS
*    ./main   in linux
*/

#include <iostream>

extern "C" 
{
    void print_number (int data);
	void print_factorial (int fac);
	int saisi_limite (int limit);
	int factorial (int fact);
	int doubler (int d);
    void adainit ();
    void adafinal ();
}

int init_value(int limite)
{
	std::cout << "in C++ : call ADA function to enter a positive integer " << std::endl;
	int in =  saisi_limite (limite); 
	return in;
}

void print_value_and_factorial(int limit)
{
	if(limit <= 0 || limit >= 13)
	{
		return;
	}
	for(int fact = 0 ; fact <= limit ; fact++)
	{
		std::cout << "in C++ : call ADA function The factorial(" << fact << ") = " << factorial (fact) << std::endl;
	}
}

void test () 
{      
        
    std::cout << "Begin program in C++" << std::endl;
    adainit(); // Required for Ada
	int in = init_value(12);
	std::cout << "Begin redirect to ADA programm " << std::endl;
    print_number(in);
	print_factorial(in);
	std::cout << "In C++ call ADA function : 2 * " << in << " = " << doubler (in) << std::endl;
	print_value_and_factorial(in);
	std::cout << "out from ADA programm " << std::endl;
    adafinal(); // Required for Ada 
    std::cout << "End programm in C++" << std::endl;
}

int main (int argc, char ** argv) 
{
	test ();
	return 0;
}
