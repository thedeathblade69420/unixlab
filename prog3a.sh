#!/bin/bash
for i in $*;
do
if [ -d $i ];
then
echo the largest file size is;
echo `ls -Rl $1 | grep "^-" | tr -s ' ' | cut -d ' ' | sort -n | tail -1` 
else
echo not a directory
fi 
done