#!/bin/bash
  
#BSUB -L /bin/bash
#BSUB -q long
#BSUB -J my_job_name
#BSUB -R "rusage[mem=5000]"
#BSUB -M 5000000
#BSUB -o gtcm.out
#BSUB -e gtcm.err

cd /scratch/temporary/mkrmar/
module load UHTS/Analysis/stacks/2.3e

gstacks -I timema/californicum -M /scratch/temporary/mkrmar/timema/info/tcm.txt -S .bam --unpaired -O timema/test.ref/stacks_m -t 8