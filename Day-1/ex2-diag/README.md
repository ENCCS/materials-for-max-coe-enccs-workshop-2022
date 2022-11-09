EXERCISE 2 - Parallelization of the eigenvalue problem
=======================================================

Play with the ndiag parameter by performing a number of runs and seeing variations in the WALL time (if any).
You can also change the fixed value of npools (the default value for this exercise is 4).

1. Open 'ex2-diag.slurm' and customize the user-related SLURM options like job-name and mail-user (not essential);
   Replace the dots in the 'for' loop at the end of the file with a list of proper values for ndiag, e.g:
       
        for id in 1 2 3 4 5 6     -not the right values here!
        do

2. Submit the job file:

        sbatch ./ex2-diag.slurm

3. Check the total WALL time at the end of the output file and do a plot in function of ndiag.
   Which does it seem to be the best ndiag value (if any)? Why?
