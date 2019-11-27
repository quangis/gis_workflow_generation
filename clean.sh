#!/bin/sh

for q in $(seq 1 5); do
    for o in sota full; do
        dir="./q${q}_${o}"
        rm -f ${dir}/figs/*
        rm -f ${dir}/impls/*
        rm -f ${dir}/sat_solutions.txt
    done
done
