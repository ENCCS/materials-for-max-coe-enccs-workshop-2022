DAY-2, EXERCISE - PHONON MODES OF CnSnI3 AT GAMMA 
=================================================

# MULTI-GPU EXECUTION WITH IMAGES, STEP 5 #
 
Perform a phonon calculation at Gamma on 4 GPUs for CnSnI3 using the ph.x program.

1. Copy the input of step2 ../step2/ph.CnSnI3.in, copy ph.CnSnI3.in as ph.CnSnI3.recover.in
   Add recover=.true. in &inputph of the latter file

2. Copy the ../step1/out directory in the current folder

3. Modify X in submit.slurm to distribute the calculation on 4 MPIs : GPUs with image parallelization

	mpirun $mpiopt -np 4 ph.x -ni X -nk 1 -i ph.CnSnI3.in > ph.CnSnI3.out
 
4. Submit the jobfile

	sbatch submit.slurm

5. With image parallelism there is 1 output file for each image. These are named out.X_0, with X the image rank. 
   Check how many irreducible representations (n_X) each image takes care

        awk '/I am image/' out.*

6. Compare wall times. Which image takes longer ? Why ?

7. Each image computes the dynamical matrices for the corresponding number of irreducible representations (n_X).
   These are stored in ./out/_phX/dynmat.X.Y, with X the image rank and Y the q-point index (0 in this exercise)
   A recover run is needed to collect the local files and compute the phonon modes (see ph.CnSnI3.recover.out )

