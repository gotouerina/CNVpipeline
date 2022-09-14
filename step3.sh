##perl脚本在当前目录内,stepplus2.sh 文件存在，且目标目录下文件已完全生成
##需要修改GFF文件路径
gffpath=/data/01/user214/CNV/Fsr.genome.term.fix.gff3
t=`pwd`
cat step2plus.sh | cut -d ';' -f 1 | cut -d " " -f 2 | while read dic
do	
	cd ${dic}
	echo cd ${dic}\; perl $t/CNV_gene-overlap.pl $gffpath *CNVs ${dic##*/}  \> output_file  >> $t/step3plus.sh
done
