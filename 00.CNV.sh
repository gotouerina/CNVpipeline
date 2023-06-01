##Freec路径手动更改
##conda 安装sambamba,bedtools,samtools
freec=
cat bamlist |  while read line; 
do	
	echo "$freec -conf example.conf --sample $line " >> CNV.sh
done
