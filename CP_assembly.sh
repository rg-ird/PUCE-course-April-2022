#!/bin/sh

# Script to map reads corresponding to a Coffee chloroplast from the genome's raw reads, filter duplicated reads, and assembly the cholorplast using Novoplasty
 
# $1 prefix of the reads, coming from files _R1.fq.gz and _R2.fq.gz

#mapping:
#The reference CP genome file must be previously indexed using the bowtie2-build function. In this case the index is named Ca_cp and is located one directory below the working directory


bowtie2 -p 2 --no-unal --very-fast-local --al-conc ./${1}_Cp -q -x ./NC_024511.2.fasta -1 ${1}_R1.fq.gz -2 ${1}_R2.fq.gz > ${1}_Cp.sam

#filtering - eliminating redundant reads. This step is optional but it can sped up execution. bbmap scripts must be within its own folder in the precedent folder or the path changed correspondently. They can be downloaded from https://sourceforge.net/projects/bbmap/files/latest/download and installed locally.

clumpify.sh in1=./${1}_Cp.1 in2=./${1}_Cp.2 out1=./${1}_Cp_dedup.1 out2=./${1}_Cp_dedup.2 dedupe=t

#assembly using NovoPlasty:
#The configuration file must be renamed to match the $1 variable, and edited to contain the correct file paths and names. Program must be placed in the precedent folder or the path changed correspondently

perl ./NOVOPlasty4.3.1.pl -c config_plasty_${1}.txt
