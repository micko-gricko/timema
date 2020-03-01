#!/bin/bash

#BSUB -L /bin/bash
#BSUB -q normal
#BSUB -J my_job_name
#BSUB -R "rusage[mem=5000]"
#BSUB -M 5000000
#BSUB -o ftcm.out
#BSUB -e ftcm.err

cd /scratch/temporary/mkrmar/timema/

module load UHTS/Analysis/samtools/1.8
for file in maps.tcm/*.sam ; do

 echo $file
        prefix=`echo $file | sed 's/.sam//'`
        echo $prefix
        out_filename=`echo $prefix".bam"`
        echo $out_filename

samtools view -b -S $file > $out_filename
done