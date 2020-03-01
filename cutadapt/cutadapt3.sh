#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=Cutadapt3
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=cutadapt3.out
#SBATCH --error=cutadapt3.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/raw/lane1


module add Bioinformatics/Software/vital-it
module load UHTS/Quality_control/cutadapt/2.3

cutadapt -a GATCGGAAGAGCACACGTCTGAACTCCAGTCAC -m 80 -o cutadapt3.fastq.gz TIM_Fst_01_L2_R1_001_kJk3E8AHtLtJ.fastq.gz
