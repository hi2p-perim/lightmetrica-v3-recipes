cmake -H. -B_build ^
      -G "NMake Makefiles" ^
      -D CMAKE_BUILD_TYPE=Release ^
      -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%
      -D LM_BUILD_TESTS=OFF ^
      -D LM_BUILD_EXAMPLES=OFF
if errorlevel 1 exit 1

cmake --build _build --target install
if errorlevel 1 exit 1

cmake -H. -B_build ^
      -G "NMake Makefiles" ^
      -D CMAKE_BUILD_TYPE=Debug ^
      -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%
      -D LM_BUILD_TESTS=OFF ^
      -D LM_BUILD_EXAMPLES=OFF
if errorlevel 1 exit 1

cmake --build _build --target install
if errorlevel 1 exit 1