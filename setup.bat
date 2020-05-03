@ECHO off
PUSHD "%~dp0"
MKDIR build
PUSHD build
cmake .. -G "Visual Studio 16 2019" -A x64
cmake --build . --config release

PAUSE