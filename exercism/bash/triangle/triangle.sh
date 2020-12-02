#!/usr/bin/env bash

cmp() {
    [[ $(echo "$1" | bc -l) -eq 1 ]]
}

is_valid_triangle() {
    cmp "$1 == 0" || cmp "$2 == 0" || cmp "$3 == 0" && return 1;
    cmp "$1 + $2 <= $3" || cmp "$1+$3 <= $2" || cmp "$2+$3 <= $1"  && return 1;
    return 0;
}

triangle() {
    type=$1
    sidea=$2
    sideb=$3
    sidec=$4
    if ! is_valid_triangle "$sidea" "$sideb" "$sidec"; then
        echo false
        return
    fi

    case $type in
        "scalene")
            cmp "$sidea != $sideb" && cmp "$sidea != $sidec" && cmp "$sideb != $sidec" && echo true || echo false
            ;;
        "equilateral")
            cmp "$sidea == $sideb" && cmp "$sidea == $sidec" && echo true || echo false
            ;;
        "isosceles")
            cmp "$sidea == $sideb" || cmp "$sidea == $sidec" || cmp "$sidec == $sideb" && echo true || echo false
            ;;
    esac
}

triangle "$@"
