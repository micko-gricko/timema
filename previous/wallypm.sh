#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=Popm
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=pm.out
#SBATCH --error=pm.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/

module add Bioinformatics/Software/vital-it

module load UHTS/Analysis/stacks/2.3e

populations -P timema/test.ref/stacks_m -V timema/test.ref/stacks_m -M /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/info/tcm.txt -t 8 -p 2 -r 0.6 --hwe --fstats --p_value_cutoff 0.05 -O timema/stacks.ref/m 
