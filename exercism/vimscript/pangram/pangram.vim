"
" Determine if a sentence is a pangram.
"
" A pangram is a sentence using every letter of the alphabet at least once.
"
" The alphabet used consists of ASCII letters a to z, inclusive, and is case
" insensitive. Input will not contain non-ASCII symbols.
"
" Example:
"
"     :echo IsPangram('The quick brown fox jumps over the lazy dog')
"     1
"     :echo IsPangram('The quick brown fox jumps over the lazy do')
"     0
"

function! IsPangram(sentence) abort
    let counts = {'a': 0, 'b': 0, 'c': 0, 'd': 0, 'e': 0, 'f': 0, 'g': 0, 'h': 0,
                \ 'i': 0, 'j': 0, 'k': 0, 'l': 0, 'm': 0, 'n': 0, 'o': 0, 'p': 0,
                \ 'q': 0, 'r': 0, 's': 0, 't': 0,
                \ 'u': 0, 'v': 0, 'w': 0, 'x': 0, 'y': 0, 'z': 0}
    let sentence = tolower(substitute(a:sentence, '\W', '', 'g'))
    if empty(sentence)
        return 0
    endif

    for i in split(sentence, '\zs')
        let counts[i] = get(counts, i) + 1
    endfor

    if index(values(counts), 0) != -1
        return 0
    endif

    return 1
endfunction
