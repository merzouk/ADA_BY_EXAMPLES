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
ADA : Saisir un entier non null inferieur ou egal a  12 :
0
ADA : Saisir un entier non null inferieur ou egal a  12 : 
-1
ADA : Saisir un entier non null inferieur ou egal a  12 : 
6
Begin redirect to ADA programm 
ADA : RECEIVED NUMBER FROM CPP :  6
ADA : factorial of  6 is  720
In C++ call ADA function : 2 * 6 = 12
in C++ : call ADA function The factorial(0) = 1
in C++ : call ADA function The factorial(1) = 1
in C++ : call ADA function The factorial(2) = 2
in C++ : call ADA function The factorial(3) = 6
in C++ : call ADA function The factorial(4) = 24
in C++ : call ADA function The factorial(5) = 120
in C++ : call ADA function The factorial(6) = 720
out from ADA programm
End programm in C++
Constructor : destroy


```
