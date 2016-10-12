#!/bin/bash

set -u

if [[ $# -lt 1 ]]; then
	printf "Usage: cat-n.sh file"
	exit 1

elif [[ $# -gt 0 ]]; then
	file=$1
	i=1
	while read -r line;
		do
		echo $i $line
		let i++
		done < $file	

fi


echo "OK"
