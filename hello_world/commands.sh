#!/bin/bash

# Pre-process non-modular hello_world.cc with clang++
echo "Size of pre-processed non-modular hello world in bytes:"
clang++ -std=c++20 -stdlib=libc++ -E hello_world.cc | wc -c
echo ""

# Pre-process modular hello_modular_world.cc with clang++
echo "Size of pre-processed modular hello world in bytes:"
clang++ -std=c++20 -stdlib=libc++ -fmodules -fbuiltin-module-map -E hello_modular_world.cc | wc -c
echo ""

# Non-modular compile time
echo "Compiling non-modular hello world:"
time clang++ -std=c++20 -stdlib=libc++ hello_world.cc -o hello_world
./hello_world
echo ""

echo "Compiling modular hello world:"
time clang++ -std=c++20 -stdlib=libc++ -fmodules -fbuiltin-module-map hello_modular_world.cc -o hello_modular_world
./hello_modular_world
echo ""

echo "Compiling modular hello world using GCC"
g++ -std=c++20 -fmodules-ts -xc++-system-header iostream
g++ -std=c++20 -fmodules-ts hello_modular_world.cc -o gcc_world
./gcc_world
echo ""

