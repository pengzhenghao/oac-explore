#!/usr/bin/env bash

cd ~/oac-explore

e=$1
for ((i=0;i<3;i+=1))
do
    CUDA_VISIBLE_DEVICES="0,2,1" python main.py --seed=${i} --domain=${e} --beta_UB=4.66 --delta=23.53 > log_${e}_${i}.log 2>&1 &
done
