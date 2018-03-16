fu! tex#view_selected() abort
    call system('xdg-open '.expand('%:p:h').'/build/'.expand('%:t:r').'_vimtex_selected.pdf')
endfu

