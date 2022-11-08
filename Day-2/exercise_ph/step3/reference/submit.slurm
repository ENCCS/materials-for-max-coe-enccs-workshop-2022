#!/bin/bash
#SBATCH --nodes 1
#SBATCH --time=00:10:00
#SBATCH --partition=gpu
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks-per-socket=1
#SBATCH --cpus-per-task=32
#SBATCH --gres=gpu:1
#SBATCH --job-name=phstep1
#SBATCH --error=err.job-%j
#SBATCH --output=out.job-%j
#SBATCH --hint=nomultithread

export WORK=/ceph/hpc/data/d2021-135-users
export EXDIR=${PWD}/..

module purge
module use ${WORK}/modules
module load QuantumESPRESSO/DEV-NVHPC-21.2-FIXMAG

export ESPRESSO_PSEUDO=${EXDIR}/pseudo
export OMP_NUM_THREADS=1
export INDIR=${EXDIR}/inputs

mpiopt="-mca pml ucx -mca btl ^uct,tcp,openib,vader --map-by socket:PE=32 --rank-by core --report-bindings "
mpirun $mpiopt -np 1 dynmat.x -ni 1 -nk 1 -i dyn.CnSnI3.in > dyn.CnSnI3.out
