#!/usr/bin/env bash

armstrong_number() {
    size=${#1}
    for (( i = 0; i < size; i++ )); do
        (( total += ${1:i:1}**size ))
    done

    (( total == $1 )) && echo "true" || echo "false"
}

armstrong_number "$@"
