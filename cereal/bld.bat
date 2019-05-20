cmake -H. -B_build ^
      -G "NMake Makefiles" ^
      -D CMAKE_BUILD_TYPE=Release ^
      -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      -D JUST_INSTALL_CEREAL=ON
if errorlevel 1 exit 1

cmake --build _build --target install
if errorlevel 1 exit 1
