#!/bin/bash

CXXFLAGS="-std=c++20 -fmodules-ts"

g++ $CXXFLAGS -xc++ -c main_internal.cc
g++ $CXXFLAGS -xc++ -c main_base.cc
g++ $CXXFLAGS -xc++ -c main.cc
g++ $CXXFLAGS -xc++ -c binary.cc
g++ binary.o main.o main_base.o main_internal.o -o binary
