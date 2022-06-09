# Hello World

This is a simple project for new developers getting started with Git and CMake.

To build this project, execute the following:

    git clone https://www.github.com/jphill4/hello_world
    cd hello_world
    cmake -B build
    cmake --build build
    ./build/hello

Additionally, this project provides two congfiguration options that will build
variants of the basic `hello` executable:

 * `ENABLE_HELLO2`: Builds a variant of `hello` that prints a different greeting to
   screen. This demonstrates the use of CMake's configuration options.

 * `ENABLE_HELLO_MPI`: Builds a variant of `hello` that executes in parallel using
   using MPI. This demonstrates incorporating external dependencies into a project
   and requires MPI to be installed on your machine. This version of the program
   is executed as follows:

       mpiexec -np 4 ./hello_mpi

