#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=Indefai
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=indefai.out
#SBATCH --error=indefai.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/genome/Tce/


module add Bioinformatics/Software/vital-it

module load UHTS/Analysis/samtools/1.8

samtools faidx 3_Tce_b3v08.fasta
