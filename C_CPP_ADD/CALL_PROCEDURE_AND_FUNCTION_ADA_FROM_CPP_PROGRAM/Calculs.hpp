#ifndef CALCULS_H_FILE
#define CALCULS_H_FILE

#include "Header.hpp"

class Calculs
{
    private:
          
    public:
          Calculs()
          {
             std::cout <<"Constructor : init " << std::endl;
          }
          ~Calculs()
          {
             std::cout <<"Constructor : destroy " << std::endl;
          }
          int init_value(int);
          void print_value_and_factorial(int);
          void run ();
};

#endif //CALCULS_H_FILE