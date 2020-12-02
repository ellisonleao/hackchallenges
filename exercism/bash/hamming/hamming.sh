#!/usr/bin/env bash


validate() {
    if (( $# != 2  )); then
        echo 'Usage: hamming.sh <string1> <string2>'
        return 1
    fi

    if (( ${#1} != ${#2} )); then
        echo 'left and right strands must be of equal length'
        return 1
    fi
}

hamming() {
    validate "$@" || return 1
    length=$#1
    total=0
    for (( i = 0; i < length-1 ; i++ )); do
        if [[ "${1:i:1}" != "${2:i:1}" ]]; then
            (( total++ ))
        fi
    done

    echo $total
}

hamming "$@"
