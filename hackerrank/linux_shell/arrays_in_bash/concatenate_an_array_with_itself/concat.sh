#!/bin/bash

array=($(cat /dev/stdin))
array=( "${array[@]}" "${array[@]}" "${array[@]}" )
echo ${array[@]}