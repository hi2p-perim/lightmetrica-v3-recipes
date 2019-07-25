#!/bin/bash

cmake -H. -B_build \
      -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_INSTALL_PREFIX=$PREFIX \
      -D OPENVDB_BUILD_PYTHON_MODULE=OFF \
      -D OPENVDB_CORE_STATIC=OFF \
      -D ILMBASE_ROOT=$PREFIX \
      -D OPENEXR_ROOT=$PREFIX \
      -D BLOSC_ROOT=$PREFIX

cmake --build _build --target install
