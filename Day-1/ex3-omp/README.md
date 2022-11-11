EXERCISE 3 - MPI + OpenMP parallelization
===============================================

Find out how to best exploit the available CPU resources, by playing with the MPI parameters (number of tasks, npools) toghether with the number of threads.  
Use the batch file ex3-omp.slurm to submit your jobs (modify it at your convenience).  
Hints on how to proceed:

1. Know the size of your node, e.g. the amount of cores at your disposal;  
   See how the time scaling of your jobs goes just by varying the number of tasks at first (keep just 1 thread each at first). Adapt the npool parameter at each run.

2. Now you can start to explore the OpenMP parallelization (you can focus to range 2:8 threads). 

3. Check the total WALL time at the end of the output files and do multiple plots in function of the number of MPI tasks and OpenMP threads.
   Which does it seem to be the best configuration for this exercise?
