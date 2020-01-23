#!/bin/sh

# Remove all APE output.

for q in $(seq 1 5); do
    for o in sota full; do
        dir="./q${q}_${o}"
        rm -f ${dir}/figs/*
        rm -f ${dir}/sat_solutions.txt
        if [ -d "./q${q}_${o}_constrained" ]; then
            dir="${dir}_constrained"
            rm -f ${dir}/figs/*
            rm -f ${dir}/sat_solutions.txt
        fi
    done
done
