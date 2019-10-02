cmake -H. -B_build ^
      -G "NMake Makefiles" ^
      -D CMAKE_BUILD_TYPE=Release ^
      -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%
if errorlevel 1 exit 1

cmake --build _build --target install
if errorlevel 1 exit 1
