#!/usr/bin/env bash

resistor_color_trio() {
    declare -A colors=(
        [black]=0 [brown]=1 [red]=2 [orange]=3 [yellow]=4
        [green]=5 [blue]=6 [violet]=7 [grey]=8 [white]=9
    )
    declare -r prefixes=("" kilo mega giga)

    for color in "${@:1:3}"; do
        if [[ ! -v "colors[$color]" ]]; then
            echo "invalid color"
            return 1
        fi
    done

    out=$(( 10#${colors[$1]}${colors[$2]} * 10 ** ${colors[$3]} ))

    local i=0
    while [[ $out == *000 ]]; do
        out=${out%000}
        (( i++ ))
    done
    echo "$out ${prefixes[i]}ohms"
}

resistor_color_trio "$@"
