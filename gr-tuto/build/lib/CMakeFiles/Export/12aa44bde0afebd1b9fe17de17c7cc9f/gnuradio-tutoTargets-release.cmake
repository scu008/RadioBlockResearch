#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "gnuradio::gnuradio-tuto" for configuration "Release"
set_property(TARGET gnuradio::gnuradio-tuto APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gnuradio::gnuradio-tuto PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/aarch64-linux-gnu/libgnuradio-tuto.so.1.0.0.0"
  IMPORTED_SONAME_RELEASE "libgnuradio-tuto.so.1.0.0"
  )

list(APPEND _cmake_import_check_targets gnuradio::gnuradio-tuto )
list(APPEND _cmake_import_check_files_for_gnuradio::gnuradio-tuto "${_IMPORT_PREFIX}/lib/aarch64-linux-gnu/libgnuradio-tuto.so.1.0.0.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
