cmake -H. -B_build ^
      -G "NMake Makefiles" ^
      -D CMAKE_BUILD_TYPE=Release ^
      -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      -D OPENEXR_BUILD_PYTHON_LIBS=OFF ^
      -D OPENEXR_BUILD_TESTS=OFF ^
      -D OPENEXR_BUILD_UTILS=OFF
if errorlevel 1 exit 1

cmake --build _build --target install
if errorlevel 1 exit 1
