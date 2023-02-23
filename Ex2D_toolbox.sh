#!/bin/bash

#SBATCH --job-name=Explore2_diagnostic
#SBATCH --output=/home/herautl/scratch/job.%j.out
#SBATCH --error=/home/herautl/scratch/job.%j.err 
#SBATCH --mail-user=louis.heraut@inrae.fr
#SBATCH --mail-type=ALL

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=1
#SBATCH -t 00:01:00

module purge
module load R/3.6.3
module load cv-standard
module load openmpi/psm2/gcc49/2.0.1

srun --nodes $SLURM_JOB_NUM_NODES --ntasks-per-node $SLURM_NTASKS --cpus-per-task $SLURM_CPUS_PER_TASK Rscript test.R
