#!/bin/bash

#BSUB -L /bin/bash
#BSUB -q normal
#BSUB -J my_job_name
#BSUB -R "rusage[mem=5000]"
#BSUB -M 5000000
#BSUB -o sftce.out
#BSUB -e sftce.err

cd /scratch/temporary/mkrmar/timema/

module load UHTS/Analysis/samtools/1.8
for file in maps.tce/*.bam ; do


echo $file
        prefix=`echo $file | sed 's/.bam//'`
        echo $prefix
        out_filename=`echo $prefix".stat"`
        echo $out_filename

samtools flagstat $file 


done