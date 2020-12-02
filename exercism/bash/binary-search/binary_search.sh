#!/usr/bin/env bash

binary_search() {
    elem=$1
    shift
    array=( "$@" )
    left=0
    right=$(( ${#array[@]} ))

    while (( left <= right )); do
        mean=$(( (left+right) / 2 ))
        if (( elem == array[mean] )); then
            echo "$mean"
            return
        elif (( array[mean] < elem )); then
            left=$(( mean + 1 ))
        else
            right=$(( mean - 1 ))
        fi
    done
    echo -1
}

binary_search "$@"
