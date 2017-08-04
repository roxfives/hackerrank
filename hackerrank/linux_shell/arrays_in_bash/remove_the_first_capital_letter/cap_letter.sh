#!/bin/bash

array=($(cat /dev/stdin))
echo ${array[@]/[A-Z]/.}