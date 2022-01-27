#!/usr/bin/bash

## decleare a function
sample() {
  echo hello i am a sample function
  echo value of a = ${a}
  b=200
  echo first argument in function = $1
  local c=0 # scope of this variable is inside function
}

## main program

#call the function
a=100
sample = ABC
echo value of b=${b}
echo first argument in main program = $1
