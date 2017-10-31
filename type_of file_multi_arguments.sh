#!/bin/bash
# Run script as bash script
# Then call function and specify filename
# Example usage:
# bash ~/type_of_file_multi_arguments.sh
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

ls -l $FILE

done
}
if [ "$?" -eq "0" ]
	then
	echo "command executed "
else
	echo "Not executed "
fi