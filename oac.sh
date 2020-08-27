#!/usr/bin/env bash

cd ~/oac-explore

for ((i=0;i<3;i+=1))
do
    python main.py --seed=$i --domain=humanoid --beta_UB=4.66 --delta=23.53 > seed$i.log 2>&1 &
done
