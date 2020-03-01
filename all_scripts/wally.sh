#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=FASTQC
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=fastqcc.out
#SBATCH --error=fastqcc.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/raw/lane1/cutadapt2


module add Bioinformatics/Software/vital-it
module load UHTS/Quality_control/fastqc/0.11.7
fastqc *fastq.gz

### commands go below here
### run with sbatch temp.sh
