#!/bin/bash

cmake -H. -B_build \
      -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_INSTALL_PREFIX=$PREFIX \
      -D FMT_DOC=OFF \
      -D FMT_TEST=OFF

cmake --build _build --target install
