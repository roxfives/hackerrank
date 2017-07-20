#!/bin/bash

echo "$(uniq -c /dev/stdin | cut -c7-)"