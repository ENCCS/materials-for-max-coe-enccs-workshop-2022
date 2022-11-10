#!/bin/bash
#SBATCH --job-name=CPUtest
#SBATCH -N 1
#SBATCH --ntasks=1
#SBATCH --time=00:30:00
#SBATCH --partition=cpu
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1

module purge
module load QuantumESPRESSO/7.1-foss-2022a
##module use /ceph/hpc/data/d2021-135-users/modules
##module load QuantumESPRESSO/DEV-NVHPC-21.2
##module load QuantumESPRESSO/DEV-NVHPC-21.2-MKL-2-SCALAPACK-FIXMAG
##module load QuantumESPRESSO/DEV-NVHPC-21.2-CPU


export OMP_NUM_THREADS=1

mpirun -np 1 turbo_spectrum.x -i turbo_spectrum.Fe.pp.in > turbo_spectrum.Fe.pp.out


