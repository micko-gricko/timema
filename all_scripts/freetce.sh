#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=Freetce
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=32G
#SBATCH --output=freetce.out
#SBATCH --error=freetce.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/mapec

module add Bioinformatics/Software/vital-it


module load UHTS/Analysis/freebayes/1.2.0

ulimit -s 81920
freebayes -f 3_Tce_b3v08.fasta --bam-list newlistce --min-mapping-quality 30 --min-coverage 5 > Tce1.fb.vcf
