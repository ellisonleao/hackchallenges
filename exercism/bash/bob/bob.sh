#!/usr/bin/env bash

function p() {
    local mesg=${1}
    echo "${mesg}"
    exit 0
}

function bob() {
    if [[ $# -eq 0 ]]; then
        p "Fine. Be that way!"
    fi

    # little sanitization
    input="$(printf %b "${1}")"
    input="${input//[[:space:]]/}"

    if [[ "${input}" == "" ]]; then
        p "Fine. Be that way!"
    fi

    if [[ "$input" == *[[:upper:]]* ]] && [[ "$input" != *[[:lower:]]* ]]; then
        if [[ "${input: -1}" == "?" ]]; then
            p "Calm down, I know what I'm doing!"
        else
            p "Whoa, chill out!"
        fi
    fi

    if [[ "${input: -1}" == "?" ]]; then
        p "Sure."
    fi

    echo "Whatever."
}

bob "$@"


