#include "Methods.hpp"

extern "C" { void ada_method2 (Methods *t, int v);}

void Methods::method(void)
{
  a_value = 2020;
  std::cout <<"in class Methods the method without params, init variable \"a_value\" to " << a_value << std::endl;
}

void Methods::method(int v)
{
   ada_method2 (this, v);
   std::cout << "in class Methods the method with params, init variable \"a_value\" to " << a_value  << std::endl ;
}

Methods::Methods(void)
{
  a_value = 1010;
  std::cout << "Constructor, init variable \"a_value\" to " << a_value  << std::endl;
}

Methods::~Methods(void)
{
  std::cout << "Destroy Methods Object " << std::endl;
}