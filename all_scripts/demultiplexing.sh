#!/bin/bash

#BSUB -L /bin/bash
#BSUB -q normal
#BSUB -J demultiplex
#BSUB -R "rusage[mem=5000]"
#BSUB -M 5000000
#BSUB -o myjob.out
#BSUB -e myjob.err

cd /scratch/temporary/mkrmar/
module load UHTS/Analysis/stacks/2.3e

process_radtags  -p timema/raw/lane1 -o timema/cleaned -b lane1d.sh \
                  -e -r -c -q -E --inline_index --renz_1 ecoRI --renz_2 mspI
	