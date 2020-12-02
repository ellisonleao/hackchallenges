"
" Determine if a triangle is equilateral, isosceles, or scalene.
"
" An equilateral triangle has all three sides the same length.
"
" An isosceles triangle has at least two sides the same length.
" (It is sometimes specified as having exactly two sides the
" same length, but for the purposes of this exercise we'll say
" at least two.)
"
" A scalene triangle has all sides of different lengths.
"
"
function! IsTriangle(input) abort
    let [l1, l2, l3] = a:input
    " check if sides are 0 and if the sum of 2 sides is smaller than the other
    " one
    if l1 == 0 && l2 == 0 && l3 == 0 || l1 + l2 < l3 || l1 + l3 < l2 || l2 + l3 < l1
        return 1
    endif
    return 0
endfunction

function! Equilateral(triangle) abort
    let [l1, l2, l3] = a:triangle
    return IsTriangle(a:triangle) ? 0 : len(uniq(a:triangle)) == 1
endfunction

function! Isosceles(triangle) abort
    let [l1, l2, l3] = a:triangle
    return IsTriangle(a:triangle) ? 0 : Equilateral(a:triangle) || (l1 == l2 && l1 != l3) || (l3 == l1 && l3 != l2) || (l3 == l2 && l3 != l1)
endfunction

function! Scalene(triangle) abort
    let [l1, l2, l3] = a:triangle
    return IsTriangle(a:triangle) ? 0 : len(uniq(a:triangle)) == 3
endfunction
