cmake -H. -B_build ^
      -G "NMake Makefiles" ^
      -D CMAKE_BUILD_TYPE=Release ^
      -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      -D BUILD_STATIC=OFF ^
      -D BUILD_TESTS=OFF ^
      -D BUILD_BENCHMARKS=OFF
if errorlevel 1 exit 1

cmake --build _build --target install
if errorlevel 1 exit 1

del %LIBRARY_BIN%\msvc*.dll
del %LIBRARY_BIN%\vcruntime*.dll
del %LIBRARY_BIN%\concrt*.dll
move %LIBRARY_LIB%\blosc.dll %LIBRARY_BIN%\
if errorlevel 1 exit 1
