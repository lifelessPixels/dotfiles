cmake_minimum_required(VERSION 3.31)
project(@@PROJECT_NAME@@ CXX)

set(SOURCES
    src/main.cpp
)

set(CMAKE_EXPORT_COMPILE_COMMANDS true)

add_executable(@@PROJECT_NAME@@ ${SOURCES})
set_target_properties(@@PROJECT_NAME@@ PROPERTIES
    CXX_STANDARD 23
    CXX_EXTENSIONS OFF
    EXPORT_COMPILE_COMMANDS YES)
target_include_directories(@@PROJECT_NAME@@ PRIVATE ${CMAKE_SOURCE_DIR}/include)
target_compile_options(@@PROJECT_NAME@@ PRIVATE -Wall -Wextra -Werror)
