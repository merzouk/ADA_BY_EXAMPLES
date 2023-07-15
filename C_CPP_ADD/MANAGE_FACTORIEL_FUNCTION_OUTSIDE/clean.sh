#!/bin/sh

echo "begin file cleaning"
if [ -e *.ali ]; then 
	echo "remove  all *.ali files"
	rm *.ali
fi

if [ -e *.o ]; then 
	echo "remove all *.o files"
	rm *.o
fi

if [ -e main ]; then 
	echo "remove exec file"
	rm main
fi

echo "end file cleaning"

exit 0