##需要环境里安装trim_galore,bowtie2,samtools,bedtools,sambamba
##需要环境中有R包
sampple=
refgene=
##上面为需要修改的输入文件
trim_galore –q 20 --phred33 --length  20 –e 0.1 --paired $sample.1.fastq $sample.2.fastq --output_dir $sample
bowtie2 -p 10 -x $refgene -1 $sample.1.fastq -2 $sample.2.fastq | samtools sort -O sam -@ 10 -o - > $sample.sam
samtools view -@ 8 -S $sample.sam -b -o $sample.bam
samtools sort -@ 8 -l 5 -o $sample.bam.sort $sample.bam

##将生成的bam文件存入bamlist中
sh step2.sh && step2plus.sh || rm step2plus.sh
sh step3.sh && step3plus.sh || rm step3plus.sh
##cat all inputfile
sh step4.sh

##BDN
sh step5.sh

##修改step5.r脚本的第10和11行（输入文件）
###Rscript step5.r
##step6.r line line 3 (inputfile)
###Rscript step6.r
