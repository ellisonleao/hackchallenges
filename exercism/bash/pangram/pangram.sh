#!/usr/bin/env bash

pangram() {
    input=${1^^}
    for item in {A..Z}; do
        [[ ! $input =~ $item ]] && echo false && return 0
    done
    echo true
}

pangram "$@"
