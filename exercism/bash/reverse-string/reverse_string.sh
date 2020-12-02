#!/usr/bin/env bash


reverse_string() {
    local tmp="$1"
    local size=${#tmp}

    for ((i=size-1;i>=0;i--)); do
        reversed="$reversed${tmp:$i:1}"
    done

    echo "$reversed"
    return 0
}

reverse_string "$@"
