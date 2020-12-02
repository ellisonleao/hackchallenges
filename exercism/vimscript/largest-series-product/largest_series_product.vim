"
" Given a string of digits, calculate the largest product for a contiguous
" substring of digits of length n.
"
"   :echo LargestProduct('1234', 1)
"   4
"   :echo LargestProduct('1234', 2)
"   12
"   :echo LargestProduct('1234', 3)
"   24
"   :echo LargestProduct('1234', 4)
"   24
"

fu! LargestProduct(digits, span) abort
    if a:span == 0
        return 1
    elseif a:span < 0 || empty(a:digits) || len(a:digits) < a:span
        return -1
    endif
    let max = 0

    for val in range(len(a:digits) - a:span + 1)
        let temp = Mul(a:digits[val:val+a:span-1])
        if temp > max
            let max = temp
        endif
    endfor

    return max
endfu

fu! Mul(digits)
    let prod = a:digits[0]
    for num in split(a:digits[1:], '\zs')
        if num !~? '\d'
            throw 'invalid input'
        endif
        let prod *= num
    endfor
    return prod
endfu
