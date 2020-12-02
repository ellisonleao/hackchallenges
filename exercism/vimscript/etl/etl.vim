"
" We are going to do the Transform step of an Extract-Transform-Load.
"
" Example:
"
"   :echo Transform({'1': ['a', 'b'], '2': ['c']})
"   {'a': 1, 'b': 1, 'c': 2}
"

function! Transform(scores) abort
    let out = {}
    for num in keys(a:scores)
        for val in a:scores[num]
            let val = tolower(val)
            let out[val] = str2nr(num)
        endfor
     endfor
     return out
endfunction
