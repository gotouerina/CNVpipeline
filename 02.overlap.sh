for i in CNV/*CNVs
do
perl CNV_gene-overlap.pl ref.gff $i  > $i.overlap
done
