#!/bin/bash
# script to rip many DVD titles to disk

if [ "$#" -lt "2" ]
then
	echo "usage: $0 <title_name> <title_number_to_rip>*"
	exit 0
fi

TITLE=$1
shift

while (( "$#" ))
do
	echo "Ripping $TITLE, Title $1"
	tccat -i /dev/dvd -T$1,-1 > "${TITLE}T$1.vob"
	shift
done
