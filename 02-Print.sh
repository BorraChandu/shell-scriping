#!/usr/bin/bash

## Printing Something On Screen Can Be Done by two commands

# 1. echo
# 2. printf

# printf will have more syntaxes to deal with and however echo is more descriptive and yet does all the things that printf does

## syntaxes: echo <MESSAGE TO PRINT>

echo welcome hello world

## syntaxes for color or new lines : echo  -e "MESSAGE/n/t/e"
# echo -e option do need message to be quoted (enter single or double quotes) | (without quotes also work but more syntaxing)

# Print Multiple Lines (/n), Some tab space (/t)

echo -e Hello World,/n/tWelcome

# Enable Colors (/e)

# syntax: echo -e "COLOR-CODEmMESSAGE"
# COLORS AND THEIR CODES ARE
# RED       31
# GREEN     32
# YELLOW    33
# BLUE      34
# MAGENTA   35
# CYAN      36

echo -e "\e[31mMESSAGE IN RED"
echo -e "\e[33mMESSAGE IN YELLOW"