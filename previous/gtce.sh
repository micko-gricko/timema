#!/bin/bash
  
#BSUB -L /bin/bash
#BSUB -q long
#BSUB -J my_job_name
#BSUB -R "rusage[mem=5000]"
#BSUB -M 5000000
#BSUB -o gtce.out
#BSUB -e gtce.err

cd /scratch/temporary/mkrmar/
module load UHTS/Analysis/stacks/2.3e

gstacks -I timema/cristinae -M /scratch/temporary/mkrmar/timema/info/tce.txt -S .bam --unpaired -O timema/test.ref/stacks_e -t 8