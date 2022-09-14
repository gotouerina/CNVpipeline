gff=Fsr.genome.term.fix.gff3
t=`cat $gff | grep 'gene	'| awk '{print $1":"$4"-"$5}' | tr -s '\n' '\t'`
cat bamlist | sed 's/\t/\n/g'  | while read line;
do
	lion=${line##*/}
	love=${lion%.*}
	for i in ${t}
	do
		samtools depth -r $i ${line} > ${love}/$i.bed
		awk '{FS="	";OFS=" "}{sum+=$3} END {print $1,$2,"Average = ",sum/NR}'  ${love}/$i.bed >> ${love}.depth
	done
done
