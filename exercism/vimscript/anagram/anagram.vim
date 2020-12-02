"
" Given a word and a list of possible anagrams, select the correct sublist.
"
" Example:
"
"   :echo FindAnagrams(['foo', 'bar', 'oof', 'Ofo'], 'foo')
"   ['Ofo', 'oof']
"
function! FindAnagrams(candidates, subject) abort
    let main = Clean(a:subject)
    let sublist = []
    for word in a:candidates
        if word ==? a:subject
            continue
        elseif Clean(word) ==? main
            let sublist = add(sublist, word)
        endif
    endfor
    return sublist
endfunction

function! Clean(word) abort
    return sort(reverse(split(tolower(a:word), '\zs')))
endfunction
