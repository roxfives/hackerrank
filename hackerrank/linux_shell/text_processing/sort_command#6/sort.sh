#!/bin/bash

echo "$(sort -n -t$'\t' -k2 /dev/stdin)"