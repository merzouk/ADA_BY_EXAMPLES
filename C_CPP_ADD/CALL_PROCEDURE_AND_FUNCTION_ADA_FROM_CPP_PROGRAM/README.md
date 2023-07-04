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
Enter new integer value between 1 and 12 :
6
Begin redirect to ADA programm
ADA : RECEIVED NUMBER FROM CPP :  6
ADA : factorial of  6 is  720
In C++ : 2 * 6 = 12
in C++ : The factorial(0) = 1
in C++ : The factorial(1) = 1
in C++ : The factorial(2) = 2
in C++ : The factorial(3) = 6
in C++ : The factorial(4) = 24
in C++ : The factorial(5) = 120
in C++ : The factorial(6) = 720
out from ADA programm
End programm in C++

```
