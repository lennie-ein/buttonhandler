# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(buttonhandler_library VERSION 0.0.1 LANGUAGES C)

add_library(buttonhandler SHARED
  "buttonhandler.c"
)

set_target_properties(buttonhandler PROPERTIES
  PUBLIC_HEADER buttonhandler.h
  OUTPUT_NAME "buttonhandler"
)

target_compile_definitions(buttonhandler PUBLIC DART_SHARED_LIB)
