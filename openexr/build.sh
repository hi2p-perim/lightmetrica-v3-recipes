#!/bin/bash

cmake -H. -B_build \
      -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_INSTALL_PREFIX=$PREFIX \
      -D OPENEXR_BUILD_PYTHON_LIBS=OFF \
      -D OPENEXR_BUILD_TESTS=OFF \
      -D OPENEXR_BUILD_UTILS=OFF

cmake --build _build --target install
