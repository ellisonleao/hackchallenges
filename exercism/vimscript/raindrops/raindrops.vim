"
" Convert a number to a string, the contents of which depend on the number's
" factors.
"
"   - If the number has 3 as a factor, output 'Pling'.
"   - If the number has 5 as a factor, output 'Plang'.
"   - If the number has 7 as a factor, output 'Plong'.
"   - If the number does not have 3, 5, or 7 as a factor, just pass
"     the number's digits straight through.
"
" Example:
"
"   :echo Raindrops(15)
"   PlingPlang
"
function! Raindrops(number) abort
    let out = ''
    let words = {3: 'Pling', 5: 'Plang', 7: 'Plong'}
    for i in [3, 5, 7]
        if a:number % i ==? 0 && a:number > 0
            let out .= words[i]
        endif
    endfor

    if out ==? ''
        return string(a:number)
    endif

    return out
endfunction
