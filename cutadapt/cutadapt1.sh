#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=Cutadapt1
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=cutadapt1.out
#SBATCH --error=cutadapt1.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/raw/lane1


module add Bioinformatics/Software/vital-it
module load UHTS/Quality_control/cutadapt/2.3

cutadapt -a GATCGGAAGAGCACACGTCTGAACTCCAGTCAC -m 80 -o cutadapt1.fastq.gz TIM_Fst_01_L1_R1_001_w2UotpfvyXwX.fastq.gz
