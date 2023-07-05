#ifndef HEADER_H_FILE
#define HEADER_H_FILE

#include <iostream>
using namespace std;


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

#endif //HEADER_H_FILE