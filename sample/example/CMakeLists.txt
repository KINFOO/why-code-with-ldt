cmake_minimum_required (VERSION 2.8.3)

SET (CMAKE_BUILD_TYPE Debug)

project (example)

SET(SOURCES example.c)

add_library(example MODULE ${SOURCES} ${CORE_SOURCES} ${LUA_LIB_HEADERS})
target_link_libraries(example lua.5.1)
SET_TARGET_PROPERTIES(example PROPERTIES PREFIX "")
