#!/bin/bash
#SBATCH --job-name=CPUtest
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

mpirun -mca pml ucx -mca btl ^uct,tcp,openib,vader -np 16 pw.x -nk 16 -i pw.Si.scf.in > pw.Si.scf.out

