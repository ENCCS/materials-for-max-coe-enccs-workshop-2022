DAY-2, EXERCISE - PHONON MODES OF CnSnI3 AT GAMMA 
=================================================

# MULTI-GPU EXECUTION WITH POOLS, STEP 4 #
 
Perform a phonon calculation at Gamma on 2 GPUs for CnSnI3 using the ph.x program.

1. Copy the input of step2 ../step2/ph.CnSnI3.in in the current folder

2. Copy the ../step1/out directory in the current folder

3. Modify X in submit.slurm to distribute the calculation on 2 MPIs : GPUs with pool parallelization

	mpirun $mpiopt -np 2 ph.x -ni 1 -nk X -i ph.CnSnI3.in > ph.CnSnI3.out
 
4. Submit the jobfile

	sbatch submit.slurm

