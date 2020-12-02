"
" Clean up user-entered phone numbers so that they can be sent SMS messages.
"
" Example:
"
"   :echo ToNANP('+1 (613)-995-0253')
"   6139950253
"
function! ToNANP(number) abort
    let cleaned = substitute(a:number, '\D', '', 'g')
    let valid_number = '\v^1?[2-9]\d{2}[2-9]\d{6}$'
    return cleaned =~? valid_number ? cleaned[-10:] : ''
endfunction
