#!/bin/sh
filesdir=$1
searchstr=$2
#a7a 
#a7a




if  [ $# -eq 2 ] ; then 
	if [ -d $filesdir ];then
		
		cd $filesdir
		numfiles=$(grep  -l -r $searchstr * | wc -l)
		numtotal=$(grep   -r $searchstr * | wc -l) 
		echo -n "The number of files are $numfiles and the number of matching lines are $numtotal "

		
		exit 0
	else 
		echo "filesdir does not represent a directory on the filesystem"
		exit 1
	fi
			 
	
	exit 0
else
	echo "parameters above were not specified correctly"
	exit 1
fi	



