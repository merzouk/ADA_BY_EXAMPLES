#include "Methods.hpp"

extern "C" 
{
  void adainit (void);
  void adafinal (void);
  void method1 (Methods *t);
}

void method1 (Methods *t)
{
  t->method1 ();
}

int main (int argc, char ** argv)
{
  Methods obj;
  adainit ();
  obj.method2 (3030);
  adafinal ();
}