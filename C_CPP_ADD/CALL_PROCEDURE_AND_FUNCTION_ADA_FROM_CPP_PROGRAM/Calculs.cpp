#include "Calculs.hpp"

int Calculs::init_value(int limite)
{
	std::cout << "in C++ : call ADA function to enter a positive integer " << std::endl;
	int in =  saisi_limite (limite); 
	return in;
}

void Calculs::print_value_and_factorial(int limit)
{
	if(limit <= 0 || limit >= 13)
	{
		return;
	}
	for(int fact = 0 ; fact <= limit ; fact++)
	{
		if (fact <= 9)
			std::cout << "in C++ : call ADA function The factorial(" << fact << ")  = " << factorial (fact) << std::endl;
		else 
			std::cout << "in C++ : call ADA function The factorial(" << fact << ") = " << factorial (fact) << std::endl;
	}
}

void Calculs::run () 
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