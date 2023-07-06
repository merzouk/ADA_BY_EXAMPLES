#!/bin/sh

echo "remove  all *.ali files"

rm *.ali

echo "remove all *.o files"
rm *.o

echo "remove exec file"

rm main

echo "end file cleaning"

return 0