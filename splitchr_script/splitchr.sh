ref=Galili.chr.fasta
samtools faidx $ref
python samtools.py > run.sh && sh run.sh
