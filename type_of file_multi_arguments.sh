#!/bin/bash
# This function proves information about a file/directory specified as argument
# Example usage:
# source ~/type_of_file_multi_arguments.sh
# filetype filename.txt ~/Documents/sciprts image.jpg du.bat

function filetype() { # Call filetype and specify a filename
for FILE in $@
do

if [ -f "$FILE" ] # If file is regular then echo "its regular"
	then
	echo "${FILE} Its regular"

elif [ -d "$FILE" ]
 	then
	echo "${FILE} Its a directory" # If file is a directory then echo it
else
	echo "${FILE} Not a regular file either a directory" # If file is neither then echo it
fi

ls -l $FILE | wc -l

if [ "$?" -eq "0" ]
	then
	echo "command executed "
else
	echo "Not executed "
fi
done
}
