#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=Pope
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=pe.out
#SBATCH --error=pe.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/

module add Bioinformatics/Software/vital-it

module load UHTS/Analysis/stacks/2.3e

populations -P timema/test.ref/stacks_e -V timema/test.ref/stacks_e -M /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/info/tce.txt -t 8 -p 2 -r 0.6 --hwe --fstats --p_value_cutoff 0.05 -O timema/stacks.ref/e 
