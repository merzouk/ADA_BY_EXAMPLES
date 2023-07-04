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
In C++ Le double de 6 vaut 12
in C++ Le factoriel de 0 vaut 1
in C++ Le factoriel de 1 vaut 1
in C++ Le factoriel de 2 vaut 2
in C++ Le factoriel de 3 vaut 6
in C++ Le factoriel de 4 vaut 24
in C++ Le factoriel de 5 vaut 120
out from ADA programm
End programm in C++

```
