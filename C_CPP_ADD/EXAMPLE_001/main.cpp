#include "A.hpp"

extern "C" 
{
  void adainit (void);
  void adafinal (void);
  void method1 (A *t);
}

void method1 (A *t)
{
  t->method1 ();
}

int main (int argc, char ** argv)
{
  A obj;
  adainit ();
  obj.method2 (3030);
  adafinal ();
}