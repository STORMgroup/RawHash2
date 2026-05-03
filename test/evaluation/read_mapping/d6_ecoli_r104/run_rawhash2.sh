#!/bin/bash

THREAD=$1

#d6_ecoli_r104
OUTDIR="./rawhash2/"
SIGNALS="../../../data/d6_ecoli_r104/pod5_files/"
REF="../../../data/d6_ecoli_r104/ref.fa"
PORE="../../../../extern/local_kmer_models/uncalled_r1041_model_only_means.txt"
PRESET="r10"
mkdir -p ${OUTDIR}
PARAMS=""

#The following is the run using default parameters:
PREFIX="d6_ecoli_r104"
bash ../../../scripts/run_rawhash2.sh ${OUTDIR} ${PREFIX} ${SIGNALS} ${REF} ${PORE} ${PRESET} ${THREAD} "${PARAMS}" > "${OUTDIR}/${PREFIX}_rawhash2_${PRESET}.out" 2> "${OUTDIR}/${PREFIX}_rawhash2_${PRESET}.err"

#Minimizers
PREFIX="d6_ecoli_r104_w3"
PARAMS+=" -w 3"
bash ../../../scripts/run_rawhash2.sh ${OUTDIR} ${PREFIX} ${SIGNALS} ${REF} ${PORE} ${PRESET} ${THREAD} "${PARAMS}" > "${OUTDIR}/${PREFIX}_rawhash2_${PRESET}.out" 2> "${OUTDIR}/${PREFIX}_rawhash2_${PRESET}.err"
