gff=/path/gff
t=`cat $gff | grep 'gene	'| awk '{print $1":"$4"-"$5}' | tr -s '\n' '\t'`
cat bamlist | while read line;
do
	lion=${line##*/}
	love=${lion%.*}
	for i in ${t}
	do
		samtools depth -r $i ${line} > ${line}.bed
		awk '{FS="	";OFS=" "}{sum+=$3} END {print $1,$2,"Average = ",sum/NR}'  ${line}.bed >> ${line}.depth
	done
done
