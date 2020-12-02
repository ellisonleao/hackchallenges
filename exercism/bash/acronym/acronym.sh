#!/usr/bin/env bash

acronym() {
    IFS=' -_*'
    read -ra input <<< "$@"
    for word in "${input[@]}"; do
        acr+="${word:0:1}"
    done

    echo "${acr^^}"
}

acronym "$@"
