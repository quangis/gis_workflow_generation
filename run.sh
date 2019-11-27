#!/bin/bash

# Run APE for all questions, for both ontologies.

ape="APE-0.8.jar"

for q in $(seq 1 5); do
    for o in sota full; do
        config="./q${q}_${o}/ape.configuration"
        java -jar $ape $config
    done
done
