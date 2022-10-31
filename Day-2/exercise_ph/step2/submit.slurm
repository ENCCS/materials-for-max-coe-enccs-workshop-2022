#!/bin/bash
#SBATCH --job-name=ph_step1
#SBATCH --nodes 1
#SBATCH --ntasks=1
#SBATCH --time=01:00:00
#SBATCH --partition=gpu
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=16

export WORK=/ceph/hpc/data/d2021-135-users
export EXDIR=${PWD}/..

module purge
module use ${WORK}/modules
module load QuantumESPRESSO/DEV-NVHPC-21.2-FIXMAG

export ESPRESSO_PSEUDO=${EXDIR}/pseudo
export OMP_NUM_THREADS=1
export INDIR=${EXDIR}/inputs

srun --mpi=pmix -n 1 ph.x -ni 1 -nk 1 -i $INDIR/ph.in > ph.out
