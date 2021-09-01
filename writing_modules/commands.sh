#!/bin/bash
#!/bin/bash

echo "Compiling AdvancedMathematics module with GCC:"
g++ -std=c++20 -fmodules-ts -xc++-system-header iostream
g++ -std=c++20 -fmodules-ts -xc++ -c advanced_mathematics.cc
g++ -std=c++20 -fmodules-ts -xc++ -c main.cc
g++ -std=c++20 main.o advanced_mathematics.o -o main
./main


echo "Compiling Bread example with GCC:"
g++ -std=c++20 -fmodules-ts -xc++-system-header iostream
g++ -std=c++20 -fmodules-ts -xc++-system-header string
g++ -std=c++20 -fmodules-ts -xc++ -c spreadables.cc
g++ -std=c++20 -fmodules-ts -xc++ -c jam.cc
g++ -std=c++20 -fmodules-ts -xc++ -c butter.cc
g++ -std=c++20 -fmodules-ts -xc++ -c bread.cc
g++ -std=c++20 bread.o spreadables.o jam.o butter.o -o bread
./bread



echo "Compiling AdvancedMathematics module with Clang:"
clang++ -std=c++20 -stdlib=libc++ -fmodules -fmodules-ts -fbuiltin-module-map -Xclang -emit-module-interface -fmodules-cache-path=cache1 -c advanced_mathematics.cc -o AdvancedMathematics.pcm
clang++ -std=c++20 -stdlib=libc++ -fmodules -fbuiltin-module-map -fmodules-cache-path=cache1 -c advanced_mathematics.cc
clang++ -std=c++20 -stdlib=libc++ -fmodules -fbuiltin-module-map -fprebuilt-module-path=. -fmodules-cache-path=cache1 -c main.cc
clang++ -std=c++20 -stdlib=libc++ main.o advanced_mathematics.o -o main
./main

echo "Compiling Bread example with Clang:"
clang++ -std=c++20 -stdlib=libc++ -fmodules -fmodules-ts -fbuiltin-module-map -Xclang -emit-module-interface -c spreadables.cc -o Spreadables.pcm
clang++ -std=c++20 -stdlib=libc++ -fmodules -fbuiltin-module-map -c spreadables.cc
clang++ -std=c++20 -stdlib=libc++ -fmodules -fbuiltin-module-map -fmodule-file=Spreadables.pcm -c butter.cc
clang++ -std=c++20 -stdlib=libc++ -fmodules -fbuiltin-module-map -fmodule-file=Spreadables.pcm -c jam.cc
clang++ -std=c++20 -stdlib=libc++ -fmodules -fbuiltin-module-map -fprebuilt-module-path=. -c bread.cc
clang++ -std=c++20 -stdlib=libc++ bread.o spreadables.o butter.o jam.o -o bread
./bread
