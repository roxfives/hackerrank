#!/bin/bash

grep -iw -e "the" -e "that" -e "then" -e "those"

#A more concise solution:
# grep -iwE "th(e|at|en|ose)"