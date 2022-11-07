INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_PYCUSTOM pycustom)

FIND_PATH(
    PYCUSTOM_INCLUDE_DIRS
    NAMES pycustom/api.h
    HINTS $ENV{PYCUSTOM_DIR}/include
        ${PC_PYCUSTOM_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    PYCUSTOM_LIBRARIES
    NAMES gnuradio-pycustom
    HINTS $ENV{PYCUSTOM_DIR}/lib
        ${PC_PYCUSTOM_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/pycustomTarget.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(PYCUSTOM DEFAULT_MSG PYCUSTOM_LIBRARIES PYCUSTOM_INCLUDE_DIRS)
MARK_AS_ADVANCED(PYCUSTOM_LIBRARIES PYCUSTOM_INCLUDE_DIRS)
