" syntax {{{1
"
" define a syntax group for commented code
syn region texCommentCode matchgroup=Number start=/^\s*\zs%@\s\?/ end=/$/ concealends

syn region texBackticks matchgroup=Comment start=/`/ end=/`/ oneline concealends containedin=texComment

" replace noisy markers, used in folds, with ❭ and ❬
exe 'syn match texFoldMarkers  /%\=\s*{'.'{{\d*\s*\ze\n/  conceal cchar=❭  containedin=texComment'
exe 'syn match texFoldMarkers  /%\=\s*}'.'}}\d*\s*\ze\n/  conceal cchar=❬  containedin=texComment'

" colors {{{1

hi link  texCommentCode  Number
hi link  texBackticks    Backticks

