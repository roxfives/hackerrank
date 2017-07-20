#!/bin/bash

echo "$(uniq -c -i /dev/stdin | cut -c7-)"