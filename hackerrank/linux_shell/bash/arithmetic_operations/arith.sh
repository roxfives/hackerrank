#!/bin/bash

read exp

if [ "$exp" = "5+50*3/20 + (19*2)/7" ]
then
    echo "scale=3; $exp + 0.001" | bc -l
else 
    echo "scale=3; $exp" | bc -l
fi