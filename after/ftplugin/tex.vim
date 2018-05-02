augroup my_tex
    au! * <buffer>
    au BufWinEnter <buffer>  setl cocu=nc
                        \ |  setl cole=3
                        \ |  setl fdm=marker
                        \ |  setl fdt=fold#text()
augroup END

nno  <plug>(my-vimtex-update)  :<c-u>sil update<cr>

nmap  <buffer><nowait><silent>  <bar>C   <plug>(my-vimtex-update)<plug>(vimtex-compile)
nmap  <buffer><nowait><silent>  <bar>c   <plug>(my-vimtex-update)<plug>(vimtex-compile-ss)
xmap  <buffer><nowait><silent>  <bar>c   <plug>(my-vimtex-update)<plug>(vimtex-compile-selected)

nno   <buffer><nowait><silent>  <bar>ec  :<c-u>tabe $XDG_CONFIG_HOME/latexmk/latexmkrc<cr>

nmap  <buffer><nowait><silent>  <bar>n   <plug>(vimtex-clean)
nmap  <buffer><nowait><silent>  <bar>N   <plug>(vimtex-clean-full)

nmap  <buffer><nowait><silent>  <bar>s   <plug>(vimtex-stop)
nmap  <buffer><nowait><silent>  <bar>S   <plug>(vimtex-stop-all)

nmap  <buffer><nowait><silent>  <bar>v   <plug>(vimtex-view)
nno   <buffer><nowait><silent>  <bar>V   :<c-u>call tex#view_selected()<cr>

nmap  <buffer><nowait><silent>  sdc   <plug>(vimtex-cmd-delete)
nmap  <buffer><nowait><silent>  sdd   <plug>(vimtex-delim-delete)
nmap  <buffer><nowait><silent>  sde   <plug>(vimtex-env-delete)
nmap  <buffer><nowait><silent>  sd$   <plug>(vimtex-env-delete-math)

let b:mc_chain = [
\    'omni',
\    'ulti',
\    'keyp',
\ ]

" teardown {{{1

let b:undo_ftplugin =         get(b:, 'undo_ftplugin', '')
\                     .(empty(get(b:, 'undo_ftplugin', '')) ? '' : '|')
\                     ."
\                        setl cocu< cole< fdm< fdt<
\                      | unlet! b:mc_chain
\                      | exe 'au! my_tex * <buffer>'
\                      | exe 'nunmap <buffer> <bar>c'
\                      | exe 'nunmap <buffer> <bar>C'
\                      | exe 'xunmap <buffer> <bar>c'
\                      | exe 'nunmap <buffer> <bar>ec'
\                      | exe 'nunmap <buffer> <bar>n'
\                      | exe 'nunmap <buffer> <bar>N'
\                      | exe 'nunmap <buffer> <bar>s'
\                      | exe 'nunmap <buffer> <bar>S'
\                      | exe 'nunmap <buffer> <bar>v'
\                      | exe 'nunmap <buffer> <bar>V'
\                      | exe 'nunmap <buffer> sde'
\                      | exe 'nunmap <buffer> sdc'
\                      | exe 'nunmap <buffer> sd$'
\                      | exe 'nunmap <buffer> sdd'
\                      "

