#!/bin/bash

cmake -H. -B_build \
      -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_INSTALL_PREFIX=$PREFIX \
      -D DOCTEST_WITH_TESTS=OFF

cmake --build _build --target install