##需要修改GFF文件路径
gffpath=/path/gff
for i in CNV/*CNVs
do
perl CNV_gene-overlap.pl $gffpath $i  > $i.overlap
done
