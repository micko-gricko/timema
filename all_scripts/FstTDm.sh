#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=FstTDm
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=fsttdmtdk.out
#SBATCH --error=fsttdmtdk.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/mapmc


module add Bioinformatics/Software/vital-it

module load UHTS/Analysis/vcftools/0.1.15

vcftools --vcf Tcm1.fb.vcf --remove-indv tcm_m32.bam --mac 3 --max-missing-count 64 --minQ 30 --minDP 5 --maxDP 50 \
	--weir-fst-pop tcm1.txt \
	--weir-fst-pop tcm2.txt \
	--out tcm.result 
