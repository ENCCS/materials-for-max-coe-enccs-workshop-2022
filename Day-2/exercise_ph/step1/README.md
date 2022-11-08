DAY-2, EXERCISE - PHONON MODES OF CnSnI3 AT GAMMA 
=================================================

# PWSCF SIMULATION, STEP 1 #
 
Perform a vc-relax calculation for CnSnI3  using the pw.x program.

1. Copy ../inputs/pw.CnSnI3.in in the current folder and modify the &CONTROL namelist to do a vc-relax calculation

   	&CONTROL
		calculation=""

2. Open submit.slurm and modify X to use R&G on 4 MPIs:GPUs
	
	mpirun -np X pw.x -i pw.in > pw.out

3. Submit the job file

	sbatch submit.slurm

   Check if convergence has been achieved.

4. Copy the output directory ( out/ )in the folder of step2. 

	cp -r ./out ../step2/.

