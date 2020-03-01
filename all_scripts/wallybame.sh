#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=BAMe
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=bame.out
#SBATCH --error=bame.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/


module add Bioinformatics/Software/vital-it

cd /scratch/temporary/mkrmar/timema/

module load UHTS/Analysis/samtools/1.8
for file in mapec/*.sam ; do

 echo $file
        prefix=`echo $file | sed 's/.sam//'`
        echo $prefix
        out_filename=`echo $prefix".bam"`
        echo $out_filename

samtools view -b -S $file > $out_filename
done
