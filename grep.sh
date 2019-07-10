#!/bin/bash

function usage(){
		echo $#;
		echo "please input three vars:
				first is options,
				second is pattern,
				third is path"
}

if [ $# -lt 3 ];
then
	usage
	exit
	else
	grep --color -$1 $2 $3
fi
