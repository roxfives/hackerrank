#!/bin/bash

read x
read y

#Respect contraints
if [ $x -gt 100 -o $x -lt -100 -o $y -gt 100 -o $y -lt -100 -o $y -eq 0 ]
then
    exit -1
fi

echo "$(( $x + $y ))"
echo "$(( $x - $y ))"
echo "$(( $x * $y ))"
echo "$(( $x / $y ))"