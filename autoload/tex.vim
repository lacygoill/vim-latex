fu tex#view_selected() abort "{{{1
    sil call system('xdg-open '
        \ .. (expand('%:p:h') .. '/build/' .. expand('%:t:r') .. '_vimtex_selected.pdf')->shellescape())
endfu

fu tex#undo_ftplugin() abort "{{{1
    unlet! b:mc_chain

    nunmap <buffer> <bar>c
    nunmap <buffer> <bar>C
    xunmap <buffer> <bar>c

    nunmap <buffer> <bar>ec
    nunmap <buffer> <bar>n
    nunmap <buffer> <bar>N
    nunmap <buffer> <bar>s
    nunmap <buffer> <bar>S
    nunmap <buffer> <bar>v
    nunmap <buffer> <bar>V
    nunmap <buffer> sde
    nunmap <buffer> sdc
    nunmap <buffer> sd$
    nunmap <buffer> sdd
endfu
