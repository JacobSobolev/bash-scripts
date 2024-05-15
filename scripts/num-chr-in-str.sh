#!/bin/bash


########################
# Script that counts the letters 
# of $str 
# --------
# grep -o => returns each latter in a new line 
# wc = word count , wc -l => counts the lines
# <<<  -  here is a string
########################

str=mississippi
char=s

echo $str | grep -o $char | wc -l
# grep -o $char <<<"$str" | wc -l # alternative way
