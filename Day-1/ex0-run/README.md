EXERCISE 0 - First serial run
=================================================

We will only use pw.x for this hands-on. Load the build-in module of QE:

   module load QuantumESPRESSO/7.1-foss-2022a


Check that the module works by running a quick serial test. Open Slurm batch file and type:

    export OMP_NUM_THREADS=1

    mpirun -np 1  pw.x -in atom-pbe.in > atom-pbe.out
    
To see the submission status of your job:

    squeue -u YOUR_USERNAME
