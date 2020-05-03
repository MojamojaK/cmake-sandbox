# https://cmake.org/cmake/help/latest/guide/tutorial/index.html#a-basic-starting-point-step-1

cmake_minimum_required(VERSION 3.9.0)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

project(msvc-cpp-sandbox VERSION 1.0.0 DESCRIPTION "msvc-cpp-sandbox")

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}")

# log level
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DSPDLOG_ACTIVE_LEVEL=SPDLOG_LEVEL_TRACE")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DSPDLOG_ACTIVE_LEVEL=SPDLOG_LEVEL_TRACE")

add_subdirectory(third-party)

add_subdirectory(template)

