#by Kamély LUMIERE
#script to have the number of predictions, min and max length an the mean of lenght of all the multifasta
#!/usr/bin/python

from Bio import SeqIO
import sys
len_list = []
#cmdargs = str(sys.argv)


for seq_record in SeqIO.parse(str(sys.argv[1]), "fasta"):
    len_list.append(len(seq_record))
 
 
somme=0 
for i in range(1,len(len_list)):
    somme+=len_list[i]
    
    
#infos to complete the S1 table
print("number of TE for the genome:",len(len_list))
print("min length:",min(len_list)) #minimal length of all the rdn predictions
print("max length:",max(len_list))#maximal length of all the rdn predictions
print("mean length:",somme/len(len_list))#mean length of all the rdn predictions

#run in the terminal
#while read line; do echo $line;python3 cal_length.py$line;done<name_rdn.txt >res_rdn_stat.txt

#for each line wich is a name of a TE prediction, it gives the number of pred, the min and max length and the mean
#name_rdn.txt is a file which contains all the ids