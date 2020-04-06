#!/bin/bash

# Run APE for all questions, for both ontologies.

ape="APE-0.9.2.jar"

for q in $(seq 1 5); do
    for o in sota full; do
        config="./q${q}_${o}/ape.configuration"
        java -jar $ape $config
        if [ -f "./q${q}_${o}_constrained/ape.configuration" ]; then
            config="./q${q}_${o}_constrained/ape.configuration"
            java -jar $ape $config
        fi
    done
done
