#!/bin/bash

#BSUB -L /bin/bash
#BSUB -q normal
#BSUB -J my_job_name
#BSUB -R "rusage[mem=5000]"
#BSUB -M 5000000
#BSUB -o poptce.out
#BSUB -e poptce.err

cd /scratch/temporary/mkrmar/

module load UHTS/Analysis/stacks/2.3e

populations -P timema/test.ref/stacks_e -M /scratch/temporary/mkrmar/timema/info/tce.txt -t 8 -p 1 -r 3 --hwe --fstats -O timema/stacks.ref/e