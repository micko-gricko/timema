#!/bin/bash

#SBATCH --account=tschwand_timema_conflict
#SBATCH --partition=long
#SBATCH --job-name=rgtcm
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=32G
#SBATCH --output=rgtcm.out
#SBATCH --error=rgtcm.err
#SBATCH --mail-user=milicakrmar@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80

cd /scratch/wally/FAC/FBM/DEE/tschwand/timema_conflict/mili/timema/mapmc

module add Bioinformatics/Software/vital-it


module load UHTS/Analysis/bamaddrg/2012.05.26

bamaddrg -b tcm_f1.bam -r mf1 > tcm_f1.RG.bam
bamaddrg -b tcm_f2.bam -r mf2 > tcm_f2.RG.bam
bamaddrg -b tcm_f3.bam -r mf3 > tcm_f3.RG.bam
bamaddrg -b tcm_f4.bam -r mf4 > tcm_f4.RG.bam
bamaddrg -b tcm_f5.bam -r mf5 > tcm_f5.RG.bam
bamaddrg -b tcm_f6.bam -r mf6 > tcm_f6.RG.bam
bamaddrg -b tcm_f7.bam -r mf7 > tcm_f7.RG.bam
bamaddrg -b tcm_f8.bam -r mf8 > tcm_f8.RG.bam
bamaddrg -b tcm_f9.bam -r mf9 > tcm_f9.RG.bam
bamaddrg -b tcm_f10.bam -r mf10 > tcm_f10.RG.bam
bamaddrg -b tcm_f11.bam -r mf11 > tcm_f11.RG.bam
bamaddrg -b tcm_f12.bam -r mf12 > tcm_f12.RG.bam
bamaddrg -b tcm_f13.bam -r mf13 > tcm_f13.RG.bam
bamaddrg -b tcm_f14.bam -r mf14 > tcm_f14.RG.bam
bamaddrg -b tcm_f15.bam -r mf15 > tcm_f15.RG.bam
bamaddrg -b tcm_f16.bam -r mf16 > tcm_f16.RG.bam
bamaddrg -b tcm_f17.bam -r mf17 > tcm_f17.RG.bam
bamaddrg -b tcm_f18.bam -r mf18 > tcm_f18.RG.bam
bamaddrg -b tcm_f19.bam -r mf19 > tcm_f19.RG.bam
bamaddrg -b tcm_f20.bam -r mf20 > tcm_f20.RG.bam
bamaddrg -b tcm_f21.bam -r mf21 > tcm_f21.RG.bam
bamaddrg -b tcm_f22.bam -r mf22 > tcm_f22.RG.bam
bamaddrg -b tcm_f23.bam -r mf23 > tcm_f23.RG.bam
bamaddrg -b tcm_f24.bam -r mf24 > tcm_f24.RG.bam
bamaddrg -b tcm_f25.bam -r mf25 > tcm_f25.RG.bam
bamaddrg -b tcm_f26.bam -r mf26 > tcm_f26.RG.bam
bamaddrg -b tcm_f27.bam -r mf27 > tcm_f27.RG.bam
bamaddrg -b tcm_f28.bam -r mf28 > tcm_f28.RG.bam
bamaddrg -b tcm_f29.bam -r mf29 > tcm_f29.RG.bam
bamaddrg -b tcm_f30.bam -r mf30 > tcm_f30.RG.bam
bamaddrg -b tcm_f31.bam -r mf31 > tcm_f31.RG.bam
bamaddrg -b tcm_f32.bam -r mf32 > tcm_f32.RG.bam
bamaddrg -b tcm_f33.bam -r mf33 > tcm_f33.RG.bam
bamaddrg -b tcm_f34.bam -r mf34 > tcm_f34.RG.bam
bamaddrg -b tcm_f35.bam -r mf35 > tcm_f35.RG.bam
bamaddrg -b tcm_f36.bam -r mf36 > tcm_f36.RG.bam
bamaddrg -b tcm_f37.bam -r mf37 > tcm_f37.RG.bam
bamaddrg -b tcm_f38.bam -r mf38 > tcm_f38.RG.bam
bamaddrg -b tcm_f39.bam -r mf39 > tcm_f39.RG.bam
bamaddrg -b tcm_m1.bam -r mm1 > tcm_m1.RG.bam
bamaddrg -b tcm_m2.bam -r mm2 > tcm_m2.RG.bam
bamaddrg -b tcm_m3.bam -r mm3 > tcm_m3.RG.bam
bamaddrg -b tcm_m4.bam -r mm4 > tcm_m4.RG.bam
bamaddrg -b tcm_m5.bam -r mm5 > tcm_m5.RG.bam
bamaddrg -b tcm_m6.bam -r mm6 > tcm_m6.RG.bam
bamaddrg -b tcm_m7.bam -r mm7 > tcm_m7.RG.bam
bamaddrg -b tcm_m8.bam -r mm8 > tcm_m8.RG.bam
bamaddrg -b tcm_m9.bam -r mm9 > tcm_m9.RG.bam
bamaddrg -b tcm_m10.bam -r mm10 > tcm_m10.RG.bam
bamaddrg -b tcm_m11.bam -r mm11 > tcm_m11.RG.bam
bamaddrg -b tcm_m12.bam -r mm12 > tcm_m12.RG.bam
bamaddrg -b tcm_m13.bam -r mm13 > tcm_m13.RG.bam
bamaddrg -b tcm_m14.bam -r mm14 > tcm_m14.RG.bam
bamaddrg -b tcm_m15.bam -r mm15 > tcm_m15.RG.bam
bamaddrg -b tcm_m16.bam -r mm16 > tcm_m16.RG.bam
bamaddrg -b tcm_m17.bam -r mm17 > tcm_m17.RG.bam
bamaddrg -b tcm_m18.bam -r mm18 > tcm_m18.RG.bam
bamaddrg -b tcm_m19.bam -r mm19 > tcm_m19.RG.bam
bamaddrg -b tcm_m20.bam -r mm20 > tcm_m20.RG.bam
bamaddrg -b tcm_m21.bam -r mm21 > tcm_m21.RG.bam
bamaddrg -b tcm_m22.bam -r mm22 > tcm_m22.RG.bam
bamaddrg -b tcm_m23.bam -r mm23 > tcm_m23.RG.bam
bamaddrg -b tcm_m24.bam -r mm24 > tcm_m24.RG.bam
bamaddrg -b tcm_m25.bam -r mm25 > tcm_m25.RG.bam
bamaddrg -b tcm_m26.bam -r mm26 > tcm_m26.RG.bam
bamaddrg -b tcm_m27.bam -r mm27 > tcm_m27.RG.bam
bamaddrg -b tcm_m28.bam -r mm28 > tcm_m28.RG.bam
bamaddrg -b tcm_m29.bam -r mm29 > tcm_m29.RG.bam
bamaddrg -b tcm_m30.bam -r mm30 > tcm_m30.RG.bam
bamaddrg -b tcm_m31.bam -r mm31 > tcm_m31.RG.bam
bamaddrg -b tcm_m32.bam -r mm32 > tcm_m32.RG.bam
bamaddrg -b tcm_m33.bam -r mm33 > tcm_m33.RG.bam
bamaddrg -b tcm_m34.bam -r mm34 > tcm_m34.RG.bam
bamaddrg -b tcm_m35.bam -r mm35 > tcm_m35.RG.bam
bamaddrg -b tcm_m36.bam -r mm36 > tcm_m36.RG.bam
bamaddrg -b tcm_m37.bam -r mm37 > tcm_m37.RG.bam
bamaddrg -b tcm_m38.bam -r mm38 > tcm_m38.RG.bam
bamaddrg -b tcm_m39.bam -r mm39 > tcm_m39.RG.bam
bamaddrg -b tcm_m40.bam -r mm40 > tcm_m40.RG.bam
bamaddrg -b tcm_m41.bam -r mm41 > tcm_m41.RG.bam
bamaddrg -b tcm_m42.bam -r mm42 > tcm_m42.RG.bam

                
