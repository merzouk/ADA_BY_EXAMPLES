# call ADA Procedure from CPP programm

## Compil and Run the application 

## Here are the compilation commands:

```
$ gnatmake -c ada_package

$ g++ -g -Wall -ansi -pedantic -std=c++0x -c *.cpp

$ gnatbind -n ada_package

$ gnatlink ada_package -o main --LINK=g++ -lstdc++ main.o

```

The main.exe file obtained allows you to run the application

```
 main.exe
Begin program in C++
ADA : Saisir un entier non null inferieur ou egal a  12 :
0
ADA : Saisir un entier non null inferieur ou egal a  12 : 
-1
ADA : Saisir un entier non null inferieur ou egal a  12 : 
13
ADA : Saisir un entier non null inferieur ou egal a  12 : 
12
Begin redirect to ADA programm 
ADA : RECEIVED NUMBER FROM CPP :  12
ADA : factorial of  12 is  479001600
In C++ : 2 * 12 = 24
in C++ : The factorial(0) = 1
in C++ : The factorial(1) = 1
in C++ : The factorial(2) = 2
in C++ : The factorial(3) = 6
in C++ : The factorial(4) = 24
in C++ : The factorial(5) = 120
in C++ : The factorial(6) = 720
in C++ : The factorial(7) = 5040
in C++ : The factorial(8) = 40320
in C++ : The factorial(9) = 362880
in C++ : The factorial(10) = 3628800
in C++ : The factorial(11) = 39916800
in C++ : The factorial(12) = 479001600
out from ADA programm
End programm in C++

```
