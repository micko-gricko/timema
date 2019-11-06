#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=Depthe
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=depthe.out
#SBATCH --error=depthe.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/


module add Bioinformatics/Software/vital-it

cd /scratch/temporary/mkrmar/timema/

module load UHTS/Analysis/BEDTools/2.26.0
for file in mapec/*.bam ; do

 echo $file
        prefix=`echo $file | sed 's/.bam//'`
        echo $prefix
        out_filename=`echo $prefix".txt"`
        echo $out_filename

genomeCoverageBed -ibam $file -g 3_Tce_b3v08.fasta   > $out_filename

done
