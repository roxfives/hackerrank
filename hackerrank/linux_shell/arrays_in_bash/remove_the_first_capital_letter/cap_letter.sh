#!/bin/bash

array=($(cat /dev/stdin))
for i in $(seq 0 $((${#array[@]} - 1)) ); do
    if [[ "${array[$i]:0:1}" =~ [A-Z] ]]; then
       array[$i]=".${array[$i]:1}"
    fi
done

echo ${array[@]}