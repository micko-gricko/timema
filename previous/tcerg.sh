#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=rgtce
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=32G
#SBATCH --output=rgtce.out
#SBATCH --error=rgtce.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/mapec

module add Bioinformatics/Software/vital-it


module load UHTS/Analysis/bamaddrg/2012.05.26

bamaddrg -b tce_f1.bam -r ef1 > tce_f1.RG.bam
bamaddrg -b tce_f2.bam -r ef2 > tce_f2.RG.bam
bamaddrg -b tce_f3.bam -r ef3 > tce_f3.RG.bam
bamaddrg -b tce_f4.bam -r ef4 > tce_f4.RG.bam
bamaddrg -b tce_f5.bam -r ef5 > tce_f5.RG.bam
bamaddrg -b tce_f6.bam -r ef6 > tce_f6.RG.bam
bamaddrg -b tce_f7.bam -r ef7 > tce_f7.RG.bam
bamaddrg -b tce_f8.bam -r ef8 > tce_f8.RG.bam
bamaddrg -b tce_f9.bam -r ef9 > tce_f9.RG.bam
bamaddrg -b tce_f10.bam -r ef10 > tce_f10.RG.bam
bamaddrg -b tce_f11.bam -r ef11 > tce_f11.RG.bam
bamaddrg -b tce_f12.bam -r ef12 > tce_f12.RG.bam
bamaddrg -b tce_f13.bam -r ef13 > tce_f13.RG.bam
bamaddrg -b tce_f14.bam -r ef14 > tce_f14.RG.bam
bamaddrg -b tce_f15.bam -r ef15 > tce_f15.RG.bam
bamaddrg -b tce_f16.bam -r ef16 > tce_f16.RG.bam
bamaddrg -b tce_f17.bam -r ef17 > tce_f17.RG.bam
bamaddrg -b tce_f18.bam -r ef18 > tce_f18.RG.bam
bamaddrg -b tce_f19.bam -r ef19 > tce_f19.RG.bam
bamaddrg -b tce_f20.bam -r ef20 > tce_f20.RG.bam
bamaddrg -b tce_f21.bam -r ef21 > tce_f21.RG.bam
bamaddrg -b tce_f22.bam -r ef22 > tce_f22.RG.bam
bamaddrg -b tce_f23.bam -r ef23 > tce_f23.RG.bam
bamaddrg -b tce_f24.bam -r ef24 > tce_f24.RG.bam
bamaddrg -b tce_f25.bam -r ef25 > tce_f25.RG.bam
bamaddrg -b tce_f26.bam -r ef26 > tce_f26.RG.bam
bamaddrg -b tce_f27.bam -r ef27 > tce_f27.RG.bam
bamaddrg -b tce_f28.bam -r ef28 > tce_f28.RG.bam
bamaddrg -b tce_f29.bam -r ef29 > tce_f29.RG.bam
bamaddrg -b tce_f30.bam -r ef30 > tce_f30.RG.bam
bamaddrg -b tce_f31.bam -r ef31 > tce_f31.RG.bam
bamaddrg -b tce_f32.bam -r ef32 > tce_f32.RG.bam
bamaddrg -b tce_f33.bam -r ef33 > tce_f33.RG.bam
bamaddrg -b tce_f34.bam -r ef34 > tce_f34.RG.bam
bamaddrg -b tce_f35.bam -r ef35 > tce_f35.RG.bam
bamaddrg -b tce_f36.bam -r ef36 > tce_f36.RG.bam
bamaddrg -b tce_f37.bam -r ef37 > tce_f37.RG.bam
bamaddrg -b tce_f38.bam -r ef38 > tce_f38.RG.bam
bamaddrg -b tce_f39.bam -r ef39 > tce_f39.RG.bam
bamaddrg -b tce_f40.bam -r ef40 > tce_f40.RG.bam
bamaddrg -b tce_f41.bam -r ef41 > tce_f41.RG.bam
bamaddrg -b tce_f42.bam -r ef42 > tce_f42.RG.bam
bamaddrg -b tce_m1.bam -r em1 > tce_m1.RG.bam
bamaddrg -b tce_m2.bam -r em2 > tce_m2.RG.bam
bamaddrg -b tce_m3.bam -r em3 > tce_m3.RG.bam
bamaddrg -b tce_m4.bam -r em4 > tce_m4.RG.bam
bamaddrg -b tce_m5.bam -r em5 > tce_m5.RG.bam
bamaddrg -b tce_m6.bam -r em6 > tce_m6.RG.bam
bamaddrg -b tce_m7.bam -r em7 > tce_m7.RG.bam
bamaddrg -b tce_m8.bam -r em8 > tce_m8.RG.bam
bamaddrg -b tce_m9.bam -r em9 > tce_m9.RG.bam
bamaddrg -b tce_m10.bam -r em10 > tce_m10.RG.bam
bamaddrg -b tce_m11.bam -r em11 > tce_m11.RG.bam
bamaddrg -b tce_m12.bam -r em12 > tce_m12.RG.bam
bamaddrg -b tce_m13.bam -r em13 > tce_m13.RG.bam
bamaddrg -b tce_m14.bam -r em14 > tce_m14.RG.bam
bamaddrg -b tce_m15.bam -r em15 > tce_m15.RG.bam
bamaddrg -b tce_m16.bam -r em16 > tce_m16.RG.bam
bamaddrg -b tce_m17.bam -r em17 > tce_m17.RG.bam
bamaddrg -b tce_m18.bam -r em18 > tce_m18.RG.bam
bamaddrg -b tce_m19.bam -r em19 > tce_m19.RG.bam
bamaddrg -b tce_m20.bam -r em20 > tce_m20.RG.bam
bamaddrg -b tce_m21.bam -r em21 > tce_m21.RG.bam
bamaddrg -b tce_m22.bam -r em22 > tce_m22.RG.bam
bamaddrg -b tce_m23.bam -r em23 > tce_m23.RG.bam
bamaddrg -b tce_m24.bam -r em24 > tce_m24.RG.bam
bamaddrg -b tce_m25.bam -r em25 > tce_m25.RG.bam
bamaddrg -b tce_m26.bam -r em26 > tce_m26.RG.bam
bamaddrg -b tce_m27.bam -r em27 > tce_m27.RG.bam
bamaddrg -b tce_m28.bam -r em28 > tce_m28.RG.bam
bamaddrg -b tce_m29.bam -r em29 > tce_m29.RG.bam
bamaddrg -b tce_m30.bam -r em30 > tce_m30.RG.bam
bamaddrg -b tce_m31.bam -r em31 > tce_m31.RG.bam
bamaddrg -b tce_m32.bam -r em32 > tce_m32.RG.bam
bamaddrg -b tce_m33.bam -r em33 > tce_m33.RG.bam
bamaddrg -b tce_m34.bam -r em34 > tce_m34.RG.bam
bamaddrg -b tce_m35.bam -r em35 > tce_m35.RG.bam
bamaddrg -b tce_m36.bam -r em36 > tce_m36.RG.bam
bamaddrg -b tce_m37.bam -r em37 > tce_m37.RG.bam
bamaddrg -b tce_m38.bam -r em38 > tce_m38.RG.bam
bamaddrg -b tce_m39.bam -r em39 > tce_m39.RG.bam
bamaddrg -b tce_m40.bam -r em40 > tce_m40.RG.bam
bamaddrg -b tce_m41.bam -r em41 > tce_m41.RG.bam
bamaddrg -b tce_m42.bam -r em42 > tce_m42.RG.bam

                
