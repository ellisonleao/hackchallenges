"
" This function takes any remark and returns Bob's response.
"
function! Response(remark) abort
    let s:remark = trim(a:remark)
    let s:only_letters = empty(matchstr(s:remark, '[a-zA-Z]')) == 0
    let s:is_shouting = toupper(s:remark) ==# s:remark && s:only_letters
    let s:is_question = s:remark[len(s:remark) - 1] ==? '?'

    if empty(s:remark)
        return 'Fine. Be that way!'
    elseif s:is_shouting && s:is_question
        return "Calm down, I know what I'm doing!"
    elseif s:is_shouting
        return 'Whoa, chill out!'
    elseif s:is_question
        return 'Sure.'
    endif

    return 'Whatever.'

endfunction
