"
" Given a word, return the scrabble score for that word.
"
"    Letter                           Value
"    A, E, I, O, U, L, N, R, S, T     1
"    D, G                             2
"    B, C, M, P                       3
"    F, H, V, W, Y                    4
"    K                                5
"    J, X                             8
"    Q, Z                             10
"

function! Score(word) abort
    let s:scores = {'a': 1, 'e': 1, 'i': 1, 'o': 1, 'u': 1, 'l': 1, 'n': 1, 'r': 1, 's': 1, 't': 1,
                \ 'd': 2, 'g': 2,
                \ 'b':  3, 'c': 3, 'm': 3, 'p': 3,
                \ 'f': 4, 'h': 4, 'v': 4, 'w': 4, 'y': 4,
                \ 'k': 5,
                \ 'j': 8, 'x': 8,
                \ 'q': 10, 'z': 10,
                \}
    let scrabble_score = 0
    for i in split(tolower(a:word), '\zs')
        if has_key(s:scores, i)
            let scrabble_score += s:scores[i]
        endif
    endfor
    return scrabble_score
endfunction
