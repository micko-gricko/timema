#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=Mapmc
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --output=mapmc.out
#SBATCH --error=mapmc.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/


module add Bioinformatics/Software/vital-it

module load UHTS/Aligner/bwa/0.7.17


for file in ./cutadaptm/*.fq.gz ; do
        echo $file
        prefix=`echo $file | sed 's/.fq.gz//' | sed 's/.*\///'`
        echo $prefix
        out_filename=`echo $prefix".sam"`
        echo $out_filename
        bwa mem -t 20 ./genome/Tcm/Tcm $file > ./mapmc/$out_filename

done
