# Methylation analysis pipeline

+ Trim data and QC
+ Alignment via bwameth.py
+ Get CpG methylation via MethylDackel

** Make sure all the corresponding softwares and packages have been installed!! **

## To Use

+ Install all the corresponding softwares and packages.

+ Prepare the data, mkdir the `data` directory, and put all the `.fq.gz` files on the ./data/dataset/ directory, where the name dataset depends on the specific name.

+ Mkdir the `sample_id` directory, and use the following code to prepare the sample name file.
```shell
ls -1 *.fq.gz | cut -d '_' -f 1-2 | awk '!a[$0]++' $@ > ../../sample_id/dataset.txt
```
+ Mkdir the `cluster` and `cluster_log` directories, where the returned information from snakemake will be put here.

+ Mkdir the `output` direcotries.

+ Edit the `methylation_BS_EMseq.snake` file, change the dataset name to what you set.

+ Dry-run the pipe for checking your settings.
```shell
snakemake -s methylation_BS_EMseq.snake --dry-run
```

+ Run the pipeline using the following code:
```shell
bash snakego.sh methlyation_BS_EMseq.snake
```
