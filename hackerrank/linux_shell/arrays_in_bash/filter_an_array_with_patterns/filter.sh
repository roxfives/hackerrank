#!/bin/bash

array=($(cat /dev/stdin))
array=(${array[@]/*A*/})
array=(${array[@]/*a*/})
echo ${array[@]}