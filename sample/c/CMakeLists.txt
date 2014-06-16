cmake_minimum_required (VERSION 2.8.3)

SET (CMAKE_BUILD_TYPE Debug)

project (c)

SET(SOURCES c.c)

add_library(c MODULE ${SOURCES} ${CORE_SOURCES})
SET_TARGET_PROPERTIES(c PROPERTIES PREFIX "")