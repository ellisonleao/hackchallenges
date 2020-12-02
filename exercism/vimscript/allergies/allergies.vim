"
" Given a person's allergy score, determine whether or not they're allergic to
" a given item, and their full list of allergies.
"
"   eggs          1
"   peanuts       2
"   shellfish     4
"   strawberries  8
"   tomatoes      16
"   chocolate     32
"   pollen        64
"   cats          128
"
" Examples:
"
"   :echo AllergicTo(5, 'shellfish')
"   1
"
"   :echo List(5)
"   ['eggs', 'shellfish']
"
let s:allergies = {
      \ 'eggs':         1,
      \ 'peanuts':      2,
      \ 'shellfish':    4,
      \ 'strawberries': 8,
      \ 'tomatoes':     16,
      \ 'chocolate':    32,
      \ 'pollen':       64,
      \ 'cats':         128,
      \ }

function! AllergicTo(score, allergy) abort
    return and(a:score, s:allergies[a:allergy]) != 0
endfunction

function! List(score) abort
    let allergies_list = sort(items(s:allergies), 'SortByScore')
    let out = []
    for [allergy, _] in allergies_list
        if AllergicTo(a:score, allergy) != 0
            let out = add(out, allergy)
        endif
    endfor
    return out
endfunction

function! SortByScore(a, b) abort
    return a:a[1] - a:b[1]
endfunction
