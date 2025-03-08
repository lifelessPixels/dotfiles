cmake_minimum_required(VERSION 3.31)
project(@@PROJECT_NAME@@ C)

set(PROJECT_SOURCE_FILES
    src/main.c
)
set(CMAKE_EXPORT_COMPILE_COMMANDS YES)

add_executable(@@PROJECT_NAME@@ ${PROJECT_SOURCE_FILES})
target_include_directories(@@PROJECT_NAME@@ PRIVATE include/)
set_property(TARGET @@PROJECT_NAME@@ PROPERTY C_STANDARD 23)
target_compile_options(@@PROJECT_NAME@@ PRIVATE -Wall -Wextra -Werror)
install(TARGETS @@PROJECT_NAME@@ DESTINATION bin)
