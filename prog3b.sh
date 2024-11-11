#!/bin/bash
filename="example.txt"
if [ -e $filename ]; 
then
mv "$filename" "${filename}_old"
echo "$filename already exists, file renamed to '{$filename}_old'"
touch "$filename";
echo "new file named $filename created";
else
echo "no existing files named $filename"
touch "$filename";
echo "new file named $filename created";
fi