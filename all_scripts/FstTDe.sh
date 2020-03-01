#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=FstTDe
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=fsttdetdk.out
#SBATCH --error=fsttdetdk.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/mapec


module add Bioinformatics/Software/vital-it

module load UHTS/Analysis/vcftools/0.1.15

vcftools --vcf Tce1.fb.vcf --mac 3 --max-missing-count 67 --minQ 30 --minDP 5 --maxDP 50 \
	--weir-fst-pop tce1.txt \
	--weir-fst-pop tce2.txt \
	--out tce.result


 
 
