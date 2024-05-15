#!/bin/bash

########################
#
# Prints all the number from 1 to $range
# that are divided by 3 or 5
# but not 15
#
########################

range=100

for i in $(seq 1 $range); do
    if ([ $(( $i % 3 )) == 0 ] || [ $(( $i % 5 )) == 0 ]) && [ $(( $i % 15 )) != 0 ];
    then
        echo $i
    fi;
done
