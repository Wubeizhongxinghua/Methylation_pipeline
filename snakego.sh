#!/bin/bash
#snakego.sh

snakefile=$1

echo "start at `date`"

snakemake --cluster "pkurun-cns 1 20"  --rerun-incomplete --nolock \
	-s ${snakefile} -j 80 --latency-wait 100 --force-use-threads  -pr \
	> cluster_log/0.${snakefile}.log 2> cluster/0.${snakefile}.err

echo "end at `date`"
