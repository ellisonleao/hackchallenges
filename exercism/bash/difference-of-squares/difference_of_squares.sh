#!/usr/bin/env bash

difference_of_squares() {
    for (( i = 0; i <= $2; i++ )); do
        (( sum+=i ))
        (( sum_of_squares+=i**2 ))
    done
    square_of_sum=$(( sum ** 2 ))

    case $1 in
        difference)
            echo $(( square_of_sum - sum_of_squares ))
            ;;
        sum_of_squares)
            echo "$sum_of_squares"
            ;;
        square_of_sum)
            echo "$square_of_sum"
            ;;
    esac
}

difference_of_squares "$@"
