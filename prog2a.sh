#!/bin/bash
for i in $(seq 1 10); 
do
    mkdir "$i";
done
for dir in $(find . -maxdepth 1 -type d);
do
    for j in $(seq 1 10);
    do
        touch "date_time-$j"
    done
done