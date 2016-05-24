#!/bin/bash
while read line
do
mkdir $line;
cp $line.fasta /home/trainee1/swadha/random/final/cluster_1/$line/;
/home/trainee1/CAP3/cap3 /home/trainee1/swadha/random/final/cluster_1/$line/$line.fasta > /home/trainee1/swadha/random/final/cluster_1/$line/$line.out;
done < list_1.txt