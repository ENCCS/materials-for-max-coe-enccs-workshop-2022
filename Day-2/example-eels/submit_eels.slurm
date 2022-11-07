#!/bin/bash
#SBATCH --job-name=GPUtest
#SBATCH -N 1
#SBATCH --ntasks=16
#SBATCH --time=00:30:00
#SBATCH --partition=cpu
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=1

module purge
module use /ceph/hpc/data/d2021-135-users/modules
##module load QuantumESPRESSO/DEV-NVHPC-21.2
##module load QuantumESPRESSO/DEV-NVHPC-21.2-MKL-2-SCALAPACK-FIXMAG
module load QuantumESPRESSO/DEV-NVHPC-21.2-CPU


export OMP_NUM_THREADS=1

mpirun -np 16 turbo_eels.x -nk 16 -i turbo_eels.Si.tddfpt.in > turbo_eels.Si.tddfpt.out

