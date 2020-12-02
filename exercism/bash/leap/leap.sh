#!/usr/bin/env bash
usage() {
    echo "Usage: leap.sh <year>"
    exit 1
}

leap() {
    # check num of params
    if [[ "$#" != 1 ]]; then
        usage
    fi

    # check if num is an integer
    if ! [[ "$1" =~ ^[0-9]+$ ]]; then
        usage
    fi

    # leap check
    if [[ $(( $1 % 4 )) -eq 0 && $(( $1 % 100 )) -ne 0 ]] \
        || [[ $(( $1 % 400 )) -eq 0 ]]; then
        echo 'true'
        return 0
    fi
    echo 'false'
    return 0
}

leap "$@"
