#!/bin/bash

array=($(cat /dev/stdin))
array=(${array[@]/*[Aa]*/})
echo ${array[@]}