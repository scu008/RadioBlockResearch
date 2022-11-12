find_package(PkgConfig)

PKG_CHECK_MODULES(PC_GR_TUTO gnuradio-tuto)

FIND_PATH(
    GR_TUTO_INCLUDE_DIRS
    NAMES gnuradio/tuto/api.h
    HINTS $ENV{TUTO_DIR}/include
        ${PC_TUTO_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    GR_TUTO_LIBRARIES
    NAMES gnuradio-tuto
    HINTS $ENV{TUTO_DIR}/lib
        ${PC_TUTO_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/gnuradio-tutoTarget.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GR_TUTO DEFAULT_MSG GR_TUTO_LIBRARIES GR_TUTO_INCLUDE_DIRS)
MARK_AS_ADVANCED(GR_TUTO_LIBRARIES GR_TUTO_INCLUDE_DIRS)
