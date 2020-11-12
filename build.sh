#!/bin/bash

# Display all commands before executing them.
set -o xtrace

# Enter the LLVM project.
cd llvm-project

# Create a directory to build the project.
mkdir build
cd build

# Adjust compilation based on the OS.
CMAKE_ARGUMENTS=""
case "${OSTYPE}" in
    darwin*) ;;
    linux*)
        CMAKE_ARGUMENTS="${CMAKE_ARGUMENTS}
  -DCMAKE_CXX_FLAGS=-fvisibility=hidden
  -DCMAKE_C_FLAGS=-fvisibility=hidden"
    ;;
    msys*) ;;
    *) ;;
esac

# Run `cmake` to configure the project.
cmake \
  -G Ninja \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_ENABLE_PROJECTS="clang" \
  -DLLVM_ENABLE_TERMINFO=OFF \
  -DLLVM_ENABLE_ZLIB=OFF \
  -DLLVM_INCLUDE_DOCS=OFF \
  -DLLVM_INCLUDE_EXAMPLES=OFF \
  -DLLVM_INCLUDE_GO_TESTS=OFF \
  -DLLVM_INCLUDE_TESTS=OFF \
  -DLLVM_INCLUDE_TOOLS=ON \
  -DLLVM_INCLUDE_UTILS=OFF \
  -DLLVM_OPTIMIZED_TABLEGEN=ON \
  -DLLVM_TARGETS_TO_BUILD="X86;AArch64" \
  ${CMAKE_ARGUMENTS} \
  ../llvm

# Showtime!
ninja
