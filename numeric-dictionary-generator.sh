#!/bin/bash

# Numeric dictionary generator.
# Usage:
# sh numeric-dictionary-generator.sh 3 | shuf > numeric-dictionary-3.txt

END=$(printf '9%.0s' $(seq 1 $1))

for i in $(seq 0 $END)
do
    echo $(printf "%0$1d\n" $i)
done
