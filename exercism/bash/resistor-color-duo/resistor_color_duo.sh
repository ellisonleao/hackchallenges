#!/usr/bin/env bash

resistor_color_duo() {
    declare -A colors=(
        [black]=0 [brown]=1 [red]=2 [orange]=3 [yellow]=4
        [green]=5 [blue]=6 [violet]=7 [grey]=8 [white]=9
    )

    for color in "${@:1:2}"; do
        if [[ ! -v "colors[$color]" ]]; then
            echo "invalid color"
            return 1
        fi

       out+="${colors[$color]}"
    done
    echo "${out}"
}

resistor_color_duo "$@"
