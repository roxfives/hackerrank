#!/bin/bash

echo "$(sort -t$'\t' -n -k2 -r /dev/stdin)"