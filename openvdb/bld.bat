cmake -H. -B_build ^
      -G "NMake Makefiles" ^
      -D CMAKE_BUILD_TYPE=Release ^
      -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      -D OPENVDB_BUILD_PYTHON_MODULE=OFF ^
      -D OPENVDB_CORE_STATIC=OFF ^
      -D ILMBASE_ROOT=%LIBRARY_PREFIX% ^
      -D OPENEXR_ROOT=%LIBRARY_PREFIX% ^
      -D BLOSC_ROOT=%LIBRARY_PREFIX% ^
      -D OPENVDB_BUILD_VDB_RENDER=ON
if errorlevel 1 exit 1

cmake --build _build --target install
if errorlevel 1 exit 1
