#by Kamély LUMIÈRE
#19th July 2023
#!/bin/bash


#script to run TEsorter (with the meatazoa db) with a db
#SBATCH -p workq
#SBATCH -J res_meta_tesor_gr1

#SBATCH --cpus-per-task=4
#SBATCH -e res_meta_tesor_gr1.err
#SBATCH -o res_meta_tesor_gr1.out



#Load modules
#Need Python-2.7.2, HMMER, Blast+

module load system/Python-2.7.2
module load bioinfo/hmmer-3.2.1 
module load bioinfo/ncbi-blast-2.7.1+ 

module load bioinfo/TEsorter-1.2.5

echo $DRMAA_LIBRARY_PATH
export DRMAA_LIBRARY_PATH=/tools/libraries/slurm-drmaa/slurm-drmaa-1.1.3/lib/libdrmaa.so

/usr/local/bioinfo/src/TEsorter/TEsorter-1.2.5/TEsorter.py aphid_TE_db_gr_1.fa -db rexdb-metazoa
