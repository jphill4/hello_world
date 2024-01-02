#!/bin/bash
#PBS -N hello
#PBS -q ts_production
#PBS -W group_list=n1904
#PBS -l select=1:ncpus=20:model=ivy
#PBS -l walltime=00:05:00
#PBS -o run.log
#PBS -j oe
#PBS -k oed

module purge
module add comp-intel
module add mpi-hpe/mpt
mpiexec -np 20 build_mpi/hello_mpi
