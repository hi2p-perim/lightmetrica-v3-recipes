#!/bin/bash

cmake -H. -B_build \
      -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_INSTALL_PREFIX=$PREFIX \
      -D BUILD_STATIC=OFF \
      -D BUILD_TESTS=OFF \
      -D BUILD_BENCHMARKS=OFF

cmake --build _build --target install
