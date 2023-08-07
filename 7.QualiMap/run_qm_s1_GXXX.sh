#!/bin/bash

#By Kamely LUMIERE
#script to have only mapped reads in bam file 

#Create date: 2023-06-27

samtools view -F 4  -b nonrRNA.GXXX.bam > GXXX_mp.bam