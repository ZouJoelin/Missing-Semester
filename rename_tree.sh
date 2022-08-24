#!/bin/bash

n=1
flag=0

for file in $(ls -v tree)
do
    echo "$file"
    if [[ $flag = '0' ]]
    then
        echo $n $flag
        mv "tree/$file" "$(seq -f "tree/09I%03g-叶.jpg" $n $n)"
        flag=1
    else
        echo $n $flag
        mv "tree/$file" "$(seq -f "tree/09I%03g-全身照.jpg" $n $n)"
        flag=0
        let "n++"
    fi
done
