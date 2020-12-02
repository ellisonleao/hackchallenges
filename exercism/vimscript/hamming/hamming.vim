"
" This function takes two strings which represent strands and returns
" their Hamming distance.
"
" If the lengths of the strands don't match, throw this exception:
"
"     'left and right strands must be of equal length'
"
function! Distance(strand1, strand2)

    if len(a:strand1) != len(a:strand2)
        throw 'left and right strands must be of equal length'
    endif

    let s1 = split(a:strand1, '\zs')
    let s2 = split(a:strand2, '\zs')
    let distance = 0

    for i in range(len(s1))
        if s1[i] != s2[i]
            let distance += 1
        endif
    endfor

    return distance

endfunction
