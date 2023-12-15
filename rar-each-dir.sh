#!/bin/bash

PRE_IFS=$IFS
IFS=$'\n'

find . -maxdepth 1 -type d | grep -v '\.$' | while read file
do
	echo ${file}
	rar a -inul "${file}.rar" $file
done

IFS=$PRE_IFS

# beep sound
echo 
