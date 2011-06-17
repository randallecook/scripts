#!/bin/bash
# list script arguments (try with something like: a b "c d" e)

echo "Listing $# arguments . . ."
echo -e "\nMethod 1: (for arg)"
for arg
do
	echo "$arg"
done

echo -e "\nMethod 2: (for arg in \$@)"
for arg in $@
do
	echo "$arg"
done

echo -e "\nMethod 3: (for arg in \$*)"
for arg in $*
do
	echo "$arg"
done

echo -e "\nMethod 4: (for arg in \"\$@\")"
for arg in "$@"
do
	echo "$arg"
done

echo -e "\nMethod 5: (for arg in \"\$*\")"
for arg in "$*"
do
	echo "$arg"
done

echo -e "\nMethod 6: (while/shift)"
while [ "$#" -ne "0" ]
do
	echo "$1"
	shift
done
