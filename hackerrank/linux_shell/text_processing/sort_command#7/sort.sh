#!/bin/bash

echo "$(sort -n -k2 -t'|' -r /dev/stdin)"