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
module load cv-standard
module load openmpi
module load R/3.6.3

mpirun Rscript test.R
