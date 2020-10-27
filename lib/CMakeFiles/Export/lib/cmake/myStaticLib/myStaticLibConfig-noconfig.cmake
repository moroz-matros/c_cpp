#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "myStaticLib::myStaticLib" for configuration ""
set_property(TARGET myStaticLib::myStaticLib APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(myStaticLib::myStaticLib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libmyStaticLib.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS myStaticLib::myStaticLib )
list(APPEND _IMPORT_CHECK_FILES_FOR_myStaticLib::myStaticLib "${_IMPORT_PREFIX}/lib/libmyStaticLib.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
