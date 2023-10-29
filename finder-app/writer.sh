#!/bin/sh
writefile=$1
writestr=$2



if  [ $# -eq 2 ] ; then 
	 dir=$(dirname $writefile)
	 mkdir -p $dir 
	if [ -d "$dir" ];then
		
		echo  "$writestr" > $writefile
		
		exit 0
	else 
		echo "file could not be created."

		exit 1
	
	fi
			 
	exit 0
else
	echo "parameters above were not specified correctly"
	exit 1
fi
