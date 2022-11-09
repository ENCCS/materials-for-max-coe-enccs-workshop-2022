EXERCISE 1 - Parallelization with pools
=================================================

Try to predict which will be the best value for npool and verify by performing a number of runs.

1. Open 'ex1-pools.slurm' and customize the user-related SLURM options like job-name and mail-user (not essential);
   Replace the dots in the 'for' loop at the end of the file with a list of proper values for npool, e.g:
       
        for ip in 1 2 3 4 5 6     -not the right values here!
        do

2. Submit the job file:

        sbatch ./ex1-pools.slurm

3. Check the total WALL time at the end of the output file and do a plot in function of npool.
   Which does it seem to be the best npool value? Why?
