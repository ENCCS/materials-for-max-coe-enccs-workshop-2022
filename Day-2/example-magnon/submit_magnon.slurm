#!/bin/bash
#SBATCH --job-name=GPUtest
#SBATCH -N 1
#SBATCH --ntasks=4
#SBATCH --time=00:30:00
#SBATCH --partition=cpu
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=16

module purge
module use /ceph/hpc/data/d2021-135-users/modules
##module load QuantumESPRESSO/DEV-NVHPC-21.2
##module load QuantumESPRESSO/DEV-NVHPC-21.2-MKL-2-SCALAPACK-FIXMAG
module load QuantumESPRESSO/DEV-NVHPC-21.2-CPU


export OMP_NUM_THREADS=1
export OMP_PLACES=cores

mpirun -np 4 --bind-to core turbo_magnon.x -nk 4 -i turbo_magnon.Fe.tddfpt.in > turbo_magnon.Fe.tddfpt.out

