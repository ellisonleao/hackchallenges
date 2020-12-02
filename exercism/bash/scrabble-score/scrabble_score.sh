#!/usr/bin/env bash

scrabble_score () {
    declare -A scores=( 
        [A]=1 [E]=1 [I]=1 [O]=1 [U]=1 [L]=1 [N]=1 [R]=1 [S]=1 [T]=1
        [D]=2 [G]=2
        [B]=3 [C]=3 [M]=3 [P]=3
        [F]=4 [H]=4 [V]=4 [W]=4 [Y]=4
        [K]=5
        [J]=8 [X]=8
        [Q]=10 [Z]=10
    )

    len=${#1}
    total=0
    word=${1^^}

    for (( i = 0; i < len; i++ )); do
        (( total += scores[${word:i:1}] ))     
    done

    echo $total
}

scrabble_score "$@"
