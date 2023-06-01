# CNV分析流程 cnv pipeline

Script used for CNV --update in 2023.6.1 version1.1

#  Software Install (软件安装)

To install freec, check http://boevalab.inf.ethz.ch/FREEC/ official website.

Maybe you can type

    wget https://github.com/BoevaLab/FREEC/releases

for download.

To install dependency, type 

        conda install sambamba
        conda install bedtools
        conda install samtools

#   BAM format file prepare （准备BAM文件）

The analysis was based on BAM format file.

To obtain Bamfile, read my pipeline in https://github.com/gotouerina/snptools

#   Fasta preparation （切分参考基因组、计算长度）

You should split reference fasta into chr and calculate length

You can use samtools, seqkit, seqtk or write scripts. Here I provide a script and a method.

Scripts for splitchr : https://github.com/gotouerina/Syri_SV/blob/main/split.pl

Usage:

        perl split.pl reference.fasta
        bioawk -c fastx '{print $name, length($seq)}' reference.fasta > reference.fasta.len

#    Config File edition (修改配置文件)

please put all split chr FASTA files into folder "splitchr" 

        chrFiles=/path/splitchr
        chrLenFile=/path/reference.fasta.len
        outputDir=/path/output

remember to edit these three lines

#    Step1 （CNV计算）

Edit the path of freec in 01.CNV.sh and run

        sh 01.CNV.sh
        sh CNVrun.sh
#   Step2 （基因注释）

        sh 02.overlap.sh
#   Step3 （计算测序深度）

        sh 03.BDN.sh

#     Plot (画图)

The CNV_gene-overlap.pl and  Rscripts used are in https://github.com/DaRinker/PolarBearCNV, check for detail.
