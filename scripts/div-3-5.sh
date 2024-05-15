#!/bin/bash

########################
#
# Prints all the numbers from 1 to $range
# that are divided by 3 or 5
# but not 15
# ----------
# seq (1 100) => creates a list of 1 to 100 each number in a new line
########################

range=100

for i in $(seq 1 $range); do
    if ([ $(( $i % 3 )) == 0 ] || [ $(( $i % 5 )) == 0 ]) && [ $(( $i % 15 )) != 0 ];
    then
        echo $i
    fi;
done
