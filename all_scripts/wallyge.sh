#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=GE
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=ge.out
#SBATCH --error=ge.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/


module add Bioinformatics/Software/vital-it

module load UHTS/Analysis/stacks/2.3e

gstacks -I timema/cristinae -M /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/info/tce.txt -S .bam --unpaired -O timema/test.ref/stacks_e -t 8
