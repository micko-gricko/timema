#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=Demult
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=demultc.out
#SBATCH --error=demultc.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/


module add Bioinformatics/Software/vital-it

module load UHTS/Analysis/stacks/2.3e

process_radtags  -i gzfastq -p timema/raw/lane1/cutadapt2 -o timema/cleaned/cutadapt -b lane1d.sh \
                  -r -c -q  --inline_index --renz_1 ecoRI --renz_2 mspI --retain_header
