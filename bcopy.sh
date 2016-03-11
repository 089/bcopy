#!/usr/bin/env bash

# bcopy.sh copies one or more files to the same directory and
# renames them using a defined pattern.
#
# LICENSE:	http://choosealicense.com/licenses/gpl-3.0/
# AUTHOR: 	https://github.com/089
#

# settings
	TIMESTAMP=`date +%Y-%m-%d-%H-%M-%S`
	BACKUP_EXT="backup"


SCRIPT_FILENAME=$(basename "$0")

echo

if [ $# -lt 1 ]; then

	echo -e "\033[1m\033[31merror: Filename is missing\033[0m"
	echo -e "\033[1musage: ${SCRIPT_FILENAME} file.ext [file2.ext] [file3.ext]\033[0m"
	exit 1

else

	while [ $# -gt 0 ]
	do

	  for FILENAME in $1
	  do

	    if test -f $FILENAME; then

	      OUTPUT_FILENAME="${FILENAME}.${TIMESTAMP}.${BACKUP_EXT}"

	      echo "copy ${FILENAME} ==> ${OUTPUT_FILENAME}"

	      cp $FILENAME $OUTPUT_FILENAME

	    else

	        echo -e "\033[1m\033[31mFile(s) $FILENAME does not exist.\033[0m"
		exit 1

	    fi

	  done

	  shift

	done
fi

echo

exit 0
