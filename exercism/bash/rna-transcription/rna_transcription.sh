#!/usr/bin/env bash

rna_transcription() {
    declare -A mapping=([G]='C' [C]='G' [T]='A' [A]='U')

    (( $# == 0 )) && return

    input=${*^^}
    for (( i = 0; i < ${#input}; i++ )); do
        char=${input:i:1}
        out+=${mapping[$char]}
    done

    if (( ${#out} != ${#input} )); then
        echo "Invalid nucleotide detected."
        return 1
    fi
    echo "$out"
}

rna_transcription "$@"
