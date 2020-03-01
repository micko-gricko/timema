#!/bin/bash
  
#BSUB -L /bin/bash
#BSUB -q normal
#BSUB -J my_job_name
#BSUB -R "rusage[mem=5000]"
#BSUB -M 5000000
#BSUB -o myjob.out
#BSUB -e myjob.err

cd /scratch/temporary/mkrmar/timema/genome/Tcm/
module load UHTS/Aligner/bwa/0.7.17
bwa index 2_Tcm_b3v08.fasta.gz -p Tcm.fa

 

