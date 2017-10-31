#!/bin/bash
# Function that counts items in directories
# Example usage
# Call function with source ~/file_count_multiple_args.sh
# Type function: file_count /etc /usr/bin ~
# Press enter


# Function parameters
function file_count() {
	for DIR in $@
	do
	N_DIR=$(ls -la  $DIR | wc -l)
	echo "You have $N_DIR items in $DIR"
done
}
	
