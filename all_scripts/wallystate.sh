#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=Statec
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=statecf.out
#SBATCH --error=statecf.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/


module add Bioinformatics/Software/vital-it

module load UHTS/Analysis/samtools/1.8
for file in mapec/*.bam ; do


echo $file
        prefix=`echo $file | sed 's/.bam//'`
        echo $prefix
        out_filename=`echo $prefix".stat"`
        echo $out_filename

samtools flagstat $file 


done
