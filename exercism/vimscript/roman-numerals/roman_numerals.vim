"
" Write a function to convert Arabic numbers to Roman numerals.
"
" Examples:
"
"   :echo ToRoman(1990)
"   MCMXC
"
"   :echo ToRoman(2008)
"   MMVIII
"
function! ToRoman(number) abort
    let input = a:number
    let mappings = ['M',  'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']
    let j = 0
    let out = ''
    for i in [1000, 900,  500, 400, 100,  90, 50, 40, 10, 9, 5, 4, 1]
        let rest = input / i
        let out .= repeat(mappings[j], rest)
        let input -= i * rest
        let j += 1
    endfor
    return out
endfunction
