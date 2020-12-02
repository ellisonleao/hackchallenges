#!/usr/bin/env bash

matching_brackets() {
    declare -A brackets=(["]"]="[" ["}"]="{" [")"]="(")
    for (( i = 0; i < ${#1}; i++ )); do
        ch=${1:i:1}
        case $ch in
            "[" | "{" | "(")
                stack+=$ch
                ;;
            "]" | "}" | ")")
                if [[ -z $stack || $stack != *"${brackets[$ch]}" ]]; then
                    echo false
                    exit
                else
                    stack=${stack%?}
                fi
                ;;
        esac
    done
    [[ -z $stack ]] && echo true || echo false
}


matching_brackets "$@"
