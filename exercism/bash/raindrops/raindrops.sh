#!/usr/bin/env bash

raindrops() {
    declare -a items=([3]=Pling [5]=Plang [7]=Plong)

    for num in 3 5 7; do
        if (( $1 % num == 0 )); then
            out+="${items[$num]}"
        fi
    done

    (( ${#out} == 0 )) && echo "$1" || echo "$out"
}

raindrops "$@"
