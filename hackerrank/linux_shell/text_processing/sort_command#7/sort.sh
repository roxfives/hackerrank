#!/bin/bash

echo "$(sort -n -k2 -t'|' /dev/stdin)"