#!/bin/bash

read
array=($(cat))
array=${array[@]}
echo $(( ${array// /^} ))