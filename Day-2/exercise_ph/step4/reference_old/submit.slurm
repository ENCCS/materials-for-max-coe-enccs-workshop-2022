#!/bin/bash
#SBATCH --nodes 1
#SBATCH --time=00:20:00
#SBATCH --partition=gpu
#SBATCH --ntasks-per-node=2
#SBATCH --cpus-per-task=32
#SBATCH --gres=gpu:2
#SBATCH --job-name=phstep4
#SBATCH --error=err.job-%j
#SBATCH --output=out.job-%j
#SBATCH --mail-type=ALL
#SBATCH --mail-user=l.bellentani@cineca.it

export WORK=/ceph/hpc/data/d2021-135-users
export EXDIR=${PWD}/..

module purge
module use ${WORK}/modules
module load QuantumESPRESSO/DEV-NVHPC-21.2-FIXMAG

export ESPRESSO_PSEUDO=${EXDIR}/pseudo
export OMP_NUM_THREADS=1
export INDIR=${EXDIR}/inputs

mpiopt="-mca pml ucx -mca btl ^uct,tcp,openib,vader "

srun --mpi=pmix -n 2 ph.x -ni 1 -nk 2 -i $INDIR/ph.in > ph.out
mpirun $mpiopt  --map-by socket:PE=16 --rank-by core --report-bindings -np 2 ph.x -ni 1 -nk 2 -i $INDIR/ph.in > ph.out
