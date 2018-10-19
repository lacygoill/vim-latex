fu! tex#view_selected() abort
    sil call system('xdg-open '.expand('%:p:h').'/build/'.expand('%:t:r').'_vimtex_selected.pdf')
endfu

