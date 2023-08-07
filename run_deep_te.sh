##by Kamély LUMIERE##
##19th July 2023##
##script to run DeepTE on genotoul##
#!/bin/bash


#script to run TEsorter (with the meatazoa db) with a db
#SBATCH -p workq
#SBATCH -J res_deep_TE

#SBATCH --cpus-per-task=4
#SBATCH -e res_deep_TE.err
#SBATCH -o res_deep_TE.out



#Load modules
#Need Python version>=3.6

module load system/Python-3.7.4


python DeepTE.py -i aphid_TE_db_gr_22.fa -sp M -m M