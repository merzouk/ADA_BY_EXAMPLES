#include "Methods.hpp"

extern "C" 
{
  void adainit (void);
  void adafinal (void);
  void method1 (Methods *t);
}

void method1 (Methods *t)
{
  t->method();
}

int main (int argc, char ** argv)
{
  Methods * mtds = new Methods();
  adainit ();
  mtds->method (3030);
  delete mtds;
  mtds = nullptr;
  adafinal ();
  return 0;
}