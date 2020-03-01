#!/bin/bash
  
#BSUB -L /bin/bash
#BSUB -q normal
#BSUB -J my_job_name
#BSUB -R "rusage[mem=5000]"
#BSUB -M 5000000
#BSUB -o myjob.out
#BSUB -e myjob.err

cd /scratch/temporary/mkrmar/timema/
module load UHTS/Aligner/bwa/0.7.17


for file in ./tce.cleaned/*.fq.gz ; do
        echo $file
        prefix=`echo $file | sed 's/.fq.gz//' | sed 's/.*\///'`
        echo $prefix
        out_filename=`echo $prefix".sam"`
        echo $out_filename
	bwa mem -t 20 ./genome/Tce/Tce $file > ./maps.tce/$out_filename

done



 
