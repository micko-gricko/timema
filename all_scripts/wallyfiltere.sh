#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=Filtere
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=fec.out
#SBATCH --error=fec.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/

module add Bioinformatics/Software/vital-it

module load UHTS/Analysis/samtools/1.8
for file in mapec/*.sam ; do

echo $file
        prefix=`echo $file | sed 's/.sam//'`
        echo $prefix
        out_filename=`echo $prefix".bam"`
        echo $out_filename
		
samtools view -Sh $file | fgrep -v XA | samtools sort | samtools view -Sbq 30 - > $out_filename

done
