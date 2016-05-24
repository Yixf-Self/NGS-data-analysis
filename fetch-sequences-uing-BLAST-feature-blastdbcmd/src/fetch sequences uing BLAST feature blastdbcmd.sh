
#!/bin/bash
while read line
do
grep -w "^$line" /home/trainee1/swadha/random/final/abov70%_one.txt | awk '{print $2}' > /home/trainee1/swadha/random/final/cluster_1/$line.txt;
/home/trainee1/ncbi-blast-2.2.28+/bin/blastdbcmd -db /home/trainee1/swadha/random/final/database.fastadb -dbtype nucl -entry_batch /home/trainee1/swadha/random/final/cluster_1/$line.txt -outfmt %f -out /home/trainee1/swadha/random/final/cluster_1/$line.fasta;
done < /home/trainee1/swadha/random/final/out4grep.txt