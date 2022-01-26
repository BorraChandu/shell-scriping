!#/usr/bin/bash

A=10
echo A = $A
DATE="2022-01-27"
echo welcome, today date is $DATE

## Command subs
NO_OF_USERS=$(who |wc -l)
echo No Of Users = $NO_OF_USERS

# date with command substitution
DATE=$(date +%F)
echo welcome, today date is $DATE
