#!/bin/bash
# By Xilong CHEN
# Create date: 2023-06-20
# Contact: chen_xilong@outlook.com

/usr/local/src/stampy-1.0.32/stampy.py \
    -g /data/atipe-workspace/klumiere/aphid_TE \
    -h /data/atipe-workspace/klumiere/aphid_TE \
    -M nonrRNA.GXXX-R1.fq.gz,nonrRNA.GXXX-R2.fq.gz \
    -t 8 \
    --fast | \
    samtools view -Sb - >nonrRNA.GXXX.bam
