"
" This function takes a DNA strand and returns its RNA complement.
"
"   G -> C
"   C -> G
"   T -> A
"   A -> U
"
" If the input is invalid, return an empty string.
"
" Example:
"
"   :echo ToRna('ACGTGGTCTTAA')
"   UGCACCAGAAUU
"
function! ToRna(strand) abort
    let s:strand = toupper(a:strand)
    let s:mapping = {'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U'}

    let s:out = ''
    for char in split(s:strand, '\zs')
        let s:out .= get(s:mapping, char, '')
    endfor

    if len(s:out) != len(s:strand)
        return ''
    endif

    return s:out
endfunction
