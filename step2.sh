#config在当前目录内，修改ctg和charfile路径
#freec在环境变量内
##conda 安装sambamba,bedtools,samtools
carsteru=`pwd`
cat bamlist | sed 's/\t/\n/g'  | while read line; 
do
	lion=${line##*/}
	love=${lion%.*}
	mkdir $love	
	echo "cd $carsteru/$love; freec -conf $carsteru/fenshu.conf --sample $line " >> step2plus.sh
done
