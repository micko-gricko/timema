#!/bin/bash
  
#BSUB -L /bin/bash
#BSUB -q long
#BSUB -J my_job_name
#BSUB -R "rusage[mem=5000]"
#BSUB -M 5000000
#BSUB -o sortm.out
#BSUB -e sortm.err

cd /scratch/temporary/mkrmar/timema/

module load UHTS/Analysis/samtools/1.8
for file in californicum/*.bam ; do

echo $file
        prefix=`echo $file | sed 's/.bam//'`
        echo $prefix
        out_filename=`echo index_$prefix".bam"`
        echo $out_filename
		
samtools sort $file > $out_filename

done