"
" Create an implementation of the atbash cipher, an ancient encryption system
" created in the Middle East.
"
" Examples:
"
"   :echo AtbashEncode('test')
"   gvhg
"
"   :echo AtbashDecode('gvhg')
"   test
"
"   :echo AtbashDecode('gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt')
"   thequickbrownfoxjumpsoverthelazydog
"
"
function! s:clean(str) abort
    return substitute(tolower(a:str), '[^a-z0-9]', '', 'g')
endfunction

function! s:to_chunks(str) abort
    return join(split(a:str, '.\{5}\zs'))
endfunction

function! s:replace(str) abort
    let s:letters = 'abcdefghijklmnopqrstuvwxyz'
    let s:cipher = 'zyxwvutsrqponmlkjihgfedcba'
    return tr(a:str, s:letters, s:cipher)
endfunction

function! AtbashDecode(cipher) abort
    return s:replace(s:clean(a:cipher))
endfunction

function! AtbashEncode(plaintext) abort
    return s:to_chunks(AtbashDecode(a:plaintext))
endfunction
