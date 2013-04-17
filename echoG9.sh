#!/bin/sh

if [ $# -eq 0 ]
  then
    echo "Entrez un nom de fichier à ouvrir."
else
       count=0
	cat -s $1 | while read LINE
	do
       let count++
       let color=(count%7)+31
       echo -e "\033["$color"m"$LINE
	done

	echo -en "\033[0m"
fi
