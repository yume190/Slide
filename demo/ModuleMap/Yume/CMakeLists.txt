PROJECT(yume C)
CMAKE_MINIMUM_REQUIRED(VERSION 3.9)

project(yume VERSION 1.0.0 DESCRIPTION "lib yume description")

add_library(yume SHARED
    yume.c
)

set_target_properties(yume PROPERTIES VERSION ${PROJECT_VERSION})
set_target_properties(yume PROPERTIES SOVERSION 1)
set_target_properties(yume PROPERTIES PUBLIC_HEADER yume.h)

include(GNUInstallDirs)

install(TARGETS yume
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})