#!/usr/bin/env bash

usage() {
    echo "Usage: ./error_handling <greetee>"
    exit 1
}

error_handling() {
    [[ $# -eq 1 ]] && echo "Hello, $1" || usage
}

error_handling "$@"
