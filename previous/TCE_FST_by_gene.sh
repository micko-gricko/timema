#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=tcecof
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=tcecof.out
#SBATCH --error=tcecof.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/mapmc


module add Bioinformatics/Software/vital-it

module load UHTS/Analysis/vcftools/0.1.15

# I used Bed tools to check the depth for my samples and then set minDP and maxDP. I used sam minQ as I did for mapping

while read line; do
        echo $line
        line_list=($line)
        scaffold=`echo ${line_list[0]}`
        start_co=`echo ${line_list[1]}`
        end_co=`echo ${line_list[2]}`
        genename=`echo ${line_list[3]}`
        echo $scaffold
        echo $start_co
        echo $end_co
     #vcftools --vcf Tce1.fb.vcf --chr $scaffold --from-bp $start_co --to-bp $end_co --mac 3 --minQ 30 --minDP 5 --maxDP 50 --max-missing 0.8 --TajimaD 100000 --out $genename
 #done<tce_ajd.txt
        vcftools --vcf Tce1.fb.vcf --chr $scaffold --from-bp $start_co --to-bp $end_co --mac 3 --minQ 30 --minDP 5 --maxDP 50 --max-missing 0.8 \
        --weir-fst-pop tce1.txt \
        --weir-fst-pop tce2.txt \
        --out $genename
 done<tce_ajd.txt