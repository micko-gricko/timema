## Milica_starting.sh

#################################################################################
### Keep track of all commands!
### Use a nice text editor (e.g. notepad++)
### Optional - use some version control
#################################################################################


#################################################################################
# vital-it currently in transition!

# for now use /scratch/temporary 

# make a dir for your stuff e.g.

mkdir /scratch/temporary/mkrmar


#################################################################################
### Download data
## Use wget

mkdir -p /scratch/temporary/mkrmar/RADseq/READS
cd /scratch/temporary/mkrmar/RADseq/READS

wget http://uhts-lgtf.vital-it.ch/symlink/TIM_Fst_01_L1_R1_001_zBPlf2YNnEJD.fastq.gz
wget http://uhts-lgtf.vital-it.ch/symlink/TIM_Fst_01_L1_R1_002_sQY6mV48qq8I.fastq.gz
wget http://uhts-lgtf.vital-it.ch/symlink/TIM_Fst_01_L2_R1_001_kJk3E8AHtLtJ.fastq.gz
wget http://uhts-lgtf.vital-it.ch/symlink/TIM_Fst_01_L2_R1_002_jV9OadBadfco.fastq.gz
wget http://uhts-lgtf.vital-it.ch/symlink/TIM_Fst_02_L1_R1_001_ZX9MhronA87L.fastq.gz
wget http://uhts-lgtf.vital-it.ch/symlink/TIM_Fst_02_L1_R1_002_ZmQl0iN7dGdG.fastq.gz
wget http://uhts-lgtf.vital-it.ch/symlink/TIM_Fst_02_L2_R1_001_jkY1mqDupZZt.fastq.gz
wget http://uhts-lgtf.vital-it.ch/symlink/TIM_Fst_02_L2_R1_002_MXfB1YtmNCPF.fastq.gz

### NOTE
#Dear Zoe,
#
#Demultiplexing your data we just observed some evidence for new index sequences derived from your expected one. I guess the four extra index sequences  are coming from custom adapters:
#
#"*" stand for deletion here:
#
#expected GCCAAT, observed => GC*AATA and GCC*ATA
#expected CTTGTA, observed => CT*GTAA and *TTGTAA
#
#those indexes would represent few millions of reads. I demultiplexed it, and you will find the extra reads in the 002 files 


#################################################################################
### QC data

## Vital-it has many pre-installed modules. You just have to load them (to see a list of installed modules type module avail)
## Here I would recommend using FastQC

module load UHTS/Quality_control/fastqc/0.11.7
fastqc *

#################################################################################
### get genomes

mkdir -p /scratch/temporary/mkrmar/RADseq/REFS
cd /scratch/temporary/mkrmar/RADseq/REFS
wget ftp://ftpmrr.unil.ch/AsexGenomeEvol/timema/final_references/*fasta.gz

## and annot

wget ftp://ftpmrr.unil.ch/AsexGenomeEvol/timema/final_references/*gff.gz

#################################################################################
#### RAD - we will use STACKS (2) for the main data processing

### follow the manual for now:
### http://catchenlab.life.illinois.edu/stacks/manual/#pipe

## also see (for background)

# Paris JR, Stevens JR, Catchen JM (2017). Lost in parameter space: a road map for stacks (S Johnston, Ed.). Methods Ecol Evol 8: 1360–1373.
# Rochette NC, Catchen JM (2017). Deriving genotypes from RAD-seq short-read data using Stacks. Nat Protoc 12: 2640–2659.

## and (for some more advanced stuff we might try)
# Warmuth VM, Ellegren H (2019). Genotype-free estimation of allele frequencies reduces bias and improves demographic inference from RADSeq data. Mol Ecol Resour 19: 586–596.











