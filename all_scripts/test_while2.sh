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

#### looping 
while read line; do
	echo $line
	line_list=($line)
	scaffold=`echo ${line_list[0]}`
	start_co=`echo ${line_list[1]}`
	end_co=`echo ${line_list[2]}`
	echo $scaffold
	echo $start_co
	echo $end_co
	vcftools --vcf Tcm1.fb.vcf --remove-indv tcm_m32.bam --chr $scaffold --from-bp $start_co --to-bp $end_co --mac 3 --minQ 30 --minDP 5 --maxDP 50 --TajimaD 100000
 done<tcmpo.txt
