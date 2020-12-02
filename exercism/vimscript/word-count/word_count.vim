"
" Given a phrase, return a dictionary containing the count of occurrences of
" each word.
"
" Example:
"
"   :echo WordCount('olly olly in come free')
"   {'olly': 2, 'come': 1, 'in': 1, 'free': 1}
"
function! WordCount(phrase) abort
    let s:counts = {}
    let s:words = split(a:phrase, "[^[:alnum:]']\\+")
    for s:word in s:words
        let s:word = substitute(tolower(s:word), "^'\\(.*\\)'$", '\1', '')
        let s:counts[s:word] = get(s:counts, s:word) + 1
    endfor
    return s:counts
endfunction
