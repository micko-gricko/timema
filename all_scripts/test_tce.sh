#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=FstTDc
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=fsttdc.out
#SBATCH --error=fsttdc.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/mapec


module add Bioinformatics/Software/vital-it

module load UHTS/Analysis/vcftools/0.1.15

#outputs like freq depth and  allele counts FST and Tajimas D have to be run in separate scripts - VCFtools suport only 1 output - repeat the same filters
# I used Bed tools to check the depth for my samples and then set minDP and maxDP. I used sam minQ as I did for mapping

while read line; do
	echo $line
	line_list=($line)
	scaffold=`echo ${line_list[0]}`
	start_co=`echo ${line_list[1]}`
	end_co=`echo ${line_list[2]}`
	echo $scaffold
	echo $start_co
	echo $end_co
	vcftools --vcf Tce1.fb.vcf --chr $scaffold --from-bp $start_co --to-bp $end_co --mac 3 --minQ 30 --minDP 5 --maxDP 50 --TajimaD 100000
 done<tcepo.txt
 
