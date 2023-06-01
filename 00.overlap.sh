##需要修改GFF文件路径
gffpath=/path/gff
do	
	perl $t/CNV_gene-overlap.pl $gffpath *CNVs ${dic##*/}  \> output_file  >> $t/step3plus.sh
done
