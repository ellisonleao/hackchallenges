#!/usr/bin/env bash

nucleotide() {
    declare -A counts=([A]=0 [C]=0 [G]=0 [T]=0)
    len=${#1}

    for (( i = 0; i < len; i++ )); do
        if [[ ! -v counts[${1:i:1}] ]]; then
            echo "Invalid nucleotide in strand"
            return 1
        fi
        (( counts[${1:i:1}]++ ))
    done

    # print output
    printf "A: %s\nC: %s\nG: %s\nT: %s" ${counts[A]} ${counts[C]} ${counts[G]} ${counts[T]}
}

nucleotide "$@"
