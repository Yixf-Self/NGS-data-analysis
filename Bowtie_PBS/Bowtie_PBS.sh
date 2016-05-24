 #! /bin/bash
 #PBS -l walltime=48:00:00
 #PBS -N bowtie-2
 #PBS -q workq
 #PBS -l select=1:ncpus=16:mpiprocs=16
 #PBS -l place=scatter:excl
 #PBS -V

 Module load bowtie-2

/app/setups/bowtie2-2.2.3/bowtie2 -x
/home/sawant/swadha/transcriptome/VWT1/genome -1
/home/sawant/swadha/transcriptome/VWT1/filtered_VWT1_R1.fastq_pairs_R1.fastq
-2
/home/sawant/swadha/transcriptome/VWT1/filtered_VWT1_R2.fastq_pairs_R2.fastq
-S /home/sawant/swadha/transcriptome/VWT1/output_VWT1.sam -p 16
