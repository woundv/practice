#!/bin/bash

# this file contains the instructions to build the "main.asm" file into an executable
# name the file youre testing your learning on "main.asm" then build and run tests,
# afterwards, rename the file to what you desire and move it to the /learned/ directory

nasm -f elf32 main.asm -o main.o &

ld -m elf_i386 main.o -o main
