#!/bin/bash

#BSUB -L /bin/bash
#BSUB -q normal
#BSUB -J my_job_name
#BSUB -R "rusage[mem=5000]"
#BSUB -M 5000000
#BSUB -o filter_e.out
#BSUB -e filter_e.err

cd /scratch/temporary/mkrmar/timema/

module load UHTS/Analysis/samtools/1.8
for file in maps.tce/*.sam ; do

echo $file
        prefix=`echo $file | sed 's/.sam//'`
        echo $prefix
        out_filename=`echo $prefix".bam"`
        echo $out_filename
		
samtools view -Sh $file | fgrep -v XA | samtools sort | samtools view -Sbq 30 - > $out_filename


done