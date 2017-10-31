#!/bin/bash
HOST1="google.com" # Host name

ping -c 1 $HOST1 # ping sents network pckages to the host, -c provides the number of pckgs

if [ "$?" -eq "0" ] # $?  provides the exit status of a command if 0 = working. If not 0 = error
					# -eq = equal
	then
	echo "${HOST1} is reachable"
else
	echo "${HOST1} not reachable"
fi


### Best practices 

HOST2="facebook.com"

ping -c 1 $HOST2
RETURN_CODE=$?

if [ "$RETURN_CODE" -ne "0" ]

	then
	echo "${HOST2} not reachable "
fi
exit 0