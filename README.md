# CNV分析流程 cnv pipeline

Script used for CNV --update in 2023.6.1

#  Software Install (软件安装)

To install freec, check http://boevalab.inf.ethz.ch/FREEC/ official website.

Maybe you can type

    wget https://github.com/BoevaLab/FREEC/releases

for download.

#   BAM format file prepare （准备BAM文件）

The analysis was based on BAM format file.

To obtain Bamfile, read my pipeline in https://github.com/gotouerina/snptools

#   Split reference fasta into chr and calculate length （切分参考fasta文件并且计算长度）

You can use samtools, seqkit, seqtk or write scripts. Here I provide a script and a method.

The Rscripts used are in https://github.com/DaRinker/PolarBearCNV

To split chromesome and contig into their own fasta file, you can use the scripts in splitchr_script. 
