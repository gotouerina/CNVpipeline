f = open("Galili.Chr.fasta.fai","r")
for line in f :
    contig = line.strip().split()[0]
    contig2 = line.strip().split()[0]
    print("samtools faidx Galili.Chr.fasta %s > %s" %(contig,contig2))

