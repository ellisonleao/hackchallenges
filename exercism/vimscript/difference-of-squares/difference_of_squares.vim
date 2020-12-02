"
" Find the difference between the square of the sum and the sum of the squares
" of the first N natural numbers.
"
" Examples:
"
"   :echo SquareOfSum(3)
"   36
"   :echo SumOfSquares(3)
"   14
"   :echo DifferenceOfSquares(3)
"   22
"
function! DifferenceOfSquares(number) abort
    let square_sum = SquareOfSum(a:number)
    let sum_square = SumOfSquares(a:number)
    return square_sum - sum_square
endfunction

function! SquareOfSum(number) abort
    let sum = 0
    let i = 1
    while i <= a:number
        let sum += i
        let i += 1
    endwhile
    return sum * sum
endfunction

function! SumOfSquares(number) abort
    let sum = 0
    let i = 1
    while i <= a:number
        let sum += i * i
        let i += 1
    endwhile
    return sum
endfunction
