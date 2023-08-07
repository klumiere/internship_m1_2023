#by Kamély LUMIERE
#19th July 2023
#script to run PASTEClassifier on genotoul
#!/bin/bash



#SBATCH --cpus-per-task=8
#SBATCH -J pastec_gr1
#SBATCH --mem 8000

#SBATCH -e pastec_flo2.log
#SBATCH -o pastec_flo2.out

module purge

#Need Python-2.7.2
module load system/Python-2.7.2

#If needed Blast+,RECON,GenomeTools,hmmer3, blastclust (or if need mcl module load bioinfo/mcl-14-137),RepeatMasker,TRF, MAFFT,repeatScout
module load bioinfo/ncbi-blast-2.7.1+ bioinfo/RECON-1.08 bioinfo/genometools-1.5.10 bioinfo/hmmer-3.1b2 bioinfo/blast-2.2.26 bioinfo/RepeatMasker-4-0-7 bioinfo/trf-v4.09 bioinfo/mafft-7.313 bioinfo/RepeatScout-1.0.5




#Load REPET env
module load bioinfo/REPET_v2.5
#export database variables
source /usr/local/bioinfo/src/REPET/REPET_linux-x64-2.5/config/setEnv.sh
/usr/local/bioinfo/src/REPET/REPET_linux-x64-2.5/bin/PASTEClassifier.py -i aphid_TE_db_gr_1.fa -C PASTEClassifier.cfg >& PASTEClassifier_gr1_pastec_log.txt
