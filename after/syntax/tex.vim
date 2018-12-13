" Redefine the `texComment` group to include our custom `texCommentTitle` item.{{{
"
" The latter is defined in `lg#styled_comment#syntax()`:
"
"     ~/.vim/plugged/vim-lg-lib/autoload/lg/styled_comment.vim
"}}}
syn clear texComment
syn match texComment /%.*$/ contains=@texCommentGroup,texCommentTitle

