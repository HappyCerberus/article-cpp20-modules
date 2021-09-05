#!/bin/bash

g++ -std=c++20 -fmodules-ts -xc++-system-header iostream
g++ -std=c++20 -fmodules-ts -c legacy.cc
g++ -std=c++20 -fmodules-ts -c main.cc
g++ main.o legacy.o -o main
./main
