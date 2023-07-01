#include "Methods.hpp"

extern "C" { void ada_method2 (Methods *t, int v);}

void Methods::method1(void)
{
  a_value = 2020;
  printf ("in A::method1, a_value = %d \n", a_value);
}

void Methods::method2(int v)
{
   ada_method2 (this, v);
   printf ("in A::method2, a_value = %d \n", a_value);
}

Methods::Methods(void)
{
  a_value = 1010;
  printf ("in A::A, a_value = %d \n", a_value);
}