#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=FstTDm
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=fsttdm.out
#SBATCH --error=fsttdm.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/mapmc


module add Bioinformatics/Software/vital-it

module load UHTS/Analysis/vcftools/0.1.15

#outputs like freq depth and  allele counts FST and Tajimas D have to be run in separate scripts - VCFtools suport only 1 output - repeat the same filters
# I used Bed tools to check the depth for my samples and then set minDP and maxDP. I used sam minQ as I did for mapping

vcftools --vcf Tcm1.fb.vcf --remove-indv tcm_m32.bam --mac 3 --MinQ 30 --minDP 5 --maxDP 50 --freq --counts --depth --weir-fst-pop tcm1.txt --weir-fst-pop tcm2.txt --TajimaD 1000 
