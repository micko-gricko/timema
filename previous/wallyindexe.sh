#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=Inde
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=inde.out
#SBATCH --error=inde.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/genome/Tce/


module add Bioinformatics/Software/vital-it

module load UHTS/Aligner/bwa/0.7.17
bwa index 3_Tce_b3v08.fasta.gz -p Tcm.fa
