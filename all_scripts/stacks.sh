#!/bin/bash

#BSUB -L /bin/bash
#BSUB -q long
#BSUB -J my_job_demultiplex
#BSUB -R "rusage[mem=5000]"
#BSUB -M 5000000
#BSUB -o myjob.out
#BSUB -e myjob.err
cp /scratch/temporary/mkrmar/timema/cleaned/* .

process_radtags --inline_index
/cat barcodes_lane1

GAATAGTC	sample2
TTGACTCC	sample3
TCTTCTGC	sample4
TTCAACCC	sample5
TTGAGGAC	sample6
AATCAGTC	sample7
GGCATATC	sample8
ACCGCCTC	sample9
GATTGATC	sample10
AACTGCGC	sample11
TGATCGCC	sample12
GGCAAGGC	sample13
TCGCAAGC	sample14
TCCGGAAC	sample15
ATACCGCC	sample16
ACTTGAAC	sample17
TATGCAGC	sample18
GAAGCGCC	sample19
GAGGTAGC	sample20
CCGCTACC	sample21
CAAGACCC	sample22
CTCTCAGC	sample23
AATCTCAC	sample24
GCAGGATC	sample25
GGTAGGTC	sample26
CATCGTCC	sample27
TTCAGAGC	sample28
CTGCTGAC	sample29
AGAGATTC	sample30
CGCAATTC	sample31
CGCTTGAC	sample32
CCGTTCAC	sample33
GCCGTCAC	sample34
TTAGGCGC	sample35
CGGTTAGC	sample36
AGACGGAC	sample37
TAGCATCC	sample38
TTCCTGCC	sample39
AATGATGC	sample40
AGGAGGCC	sample41
TTATCCTC	sample42
ACTCTAGC	sample43
GGCCATCC	sample44
CAGAGTTC	sample45
ATCATCAC	sample46
GAACTTGC	sample47
CGCGGAGC	sample48
TGCCAGAC	sample49
TCTCTTAC	sample50
GGTCGACC	sample51
GCTCTCCC	sample52
GGATATAC	sample53
GGACTCAC	sample54
TCTATCGC	sample55
GACGGTAC	sample56
GTTCATAC	sample57
ACTACGAC	sample58
AGCTTCTC	sample59
ACCGAGGC	sample60
TATACTAC	sample61
GGTATTGC	sample62
CCGTCTTC	sample63
CTGGAATC	sample64
TTCCGCAC	sample65
CAATCATC	sample66
AAGCGAGC	sample67
GAATGCCC	sample68
CGGAAGAC	sample69
AGGAATGC	sample70
CGGTATCC	sample71
GGAGTACC	sample72
CTAGTCTC	sample73
ATGACGGC	sample74
TAGGACTC	sample75
GCAACTTC	sample76
GCGTCGCC	sample77
AATGGCTC	sample78
TCAACGGC	sample79
GTATCGGC	sample80
ATGGCAAC	sample81
TTCGGTCC	sample82
CGTACGGC	sample83
TCAAGCAC	sample84
CATTATTC	sample85
AACTCGAC	sample86
CCTGGACC	sample87
CTGGCTGC	sample88
CTTACCTC	sample89
CTACCTTC	sample90
GTCCTCTC	sample91
TGGTTCCC	sample92
ACCTACCC	sample93
CTATGAAC	sample94
AAGGAACC	sample95
ACGCAGAC	sample96
process_radtags -p ./raw/ -o ./cleaned/ -b ./barcodes/barcodes_lane1 \
                  -e EcoRI-HF -r -c -q