#!/bin/bash
workdir=$1
sample=$2
genome=$3
threads=$4


cd ${workdir} && \
		 MethylDackel extract -@ $threads --opref ${sample} $genome ${sample}.deduplicated.bam
