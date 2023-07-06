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
Constructor : init
Begin program in C++
in C++ : call ADA function to enter a positive integer
d
ADA : Saisir un entier non null inferieur ou egal a  12 :
f
La saisie n'est pas correcte
ADA : Saisir un entier non null inferieur ou egal a  12 :
0
ADA : Saisir un entier non null inferieur ou egal a  12 :
-1
ADA : Saisir un entier non null inferieur ou egal a  12 :
14
ADA : Saisir un entier non null inferieur ou egal a  12 :
11
Begin redirect to ADA programm
ADA : RECEIVED NUMBER FROM CPP :  11
ADA : factorial of  11 is  39916800
In C++ call ADA function : 2 * 11 = 22
in C++ : call ADA function The factorial(0)  = 1
in C++ : call ADA function The factorial(1)  = 1
in C++ : call ADA function The factorial(2)  = 2
in C++ : call ADA function The factorial(3)  = 6
in C++ : call ADA function The factorial(4)  = 24
in C++ : call ADA function The factorial(5)  = 120
in C++ : call ADA function The factorial(6)  = 720
in C++ : call ADA function The factorial(7)  = 5040
in C++ : call ADA function The factorial(8)  = 40320
in C++ : call ADA function The factorial(9)  = 362880
in C++ : call ADA function The factorial(10) = 3628800
in C++ : call ADA function The factorial(11) = 39916800
out from ADA programm
End programm in C++
Constructor : destroy


```
