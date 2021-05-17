cmake_minimum_required(VERSION 3.5)
project(hello_world
    VERSION 0.0.0
    LANGUAGES CXX
)

add_library(libhello source/hello/hello.cpp)
target_include_directories(libhello PUBLIC source/hello)

add_executable(hello source/main.cpp)
target_link_libraries(hello PRIVATE libhello)

option(ENABLE_HELLO2 "Compile the hello2 executable" OFF)
if(ENABLE_HELLO2)
    add_executable(hello2 source/main2.cpp)
    target_link_libraries(hello2 PRIVATE libhello)
endif()

option(ENABLE_HELLOMPI "Compile the hello_mpi executable" OFF)
if(ENABLE_HELLOMPI)
    find_package(MPI REQUIRED)
    add_executable(hello_mpi source/main_mpi.cpp)
    target_link_libraries(hello_mpi PRIVATE libhello MPI::MPI_CXX)
endif()
