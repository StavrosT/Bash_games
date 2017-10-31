#!/bin/bash
FILE=$1
read -p "Enter filename or path to directory/file: " FILE

if [ -f $FILE ]
	then
	echo "Its regular"

elif [ -d $FILE ]
 	then
	echo "Its a directory"
else
	echo "Another type"
fi
ls -al $FILE | wc -l