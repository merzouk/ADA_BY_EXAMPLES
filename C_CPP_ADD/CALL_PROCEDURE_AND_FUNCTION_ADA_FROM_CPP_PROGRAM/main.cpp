/*
*    TO BUILD AND USE IT :
*    gnatmake -c ada_package
*    g++ -c main.cpp
*    gnatbind -n ada_package
*    gnatlink ada_package -o main --LINK=g++ -lstdc++ main.o
*    main.exe in WINDOWS
*    ./main   in linux
*/

#include <iostream>

extern "C" {
        void print_number (int data);
		void print_factorial (int fac);
		int factorial(int fact);
		int doubler (int d);
        void adainit ();
        void adafinal ();
}

int main (int argc, char ** argv) 
{      
        int in = 0; 
        std::cout << "Begin program in C++" << std::endl;
        adainit(); // Required for Ada
		while(in <= 0 || in >= 13)
		{
			in = 0;
			std::cout << "Enter new integer value between 1 and 12 : " << std::endl;
			std::cin >> in;
		}
		std::cout << "Begin redirect to ADA programm " << std::endl;
        print_number(in);
		print_factorial(in);
		std::cout << "In C++ Le double de " << in << " vaut " << doubler (in) << std::endl;
		std::cout << "in C++ Le factoriel de " << in << " vaut " << factorial (in) << std::endl;
		std::cout << "out from ADA programm " << std::endl;
        adafinal(); // Required for Ada 
        std::cout << "End programm in C++" << std::endl;
        return 0;
}