let g:neomake_javascript_enabled_makers = []

function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

if findfile('.eslintrc', '.;') ==# ''
  let g:eslint_path = StrTrim(system('PATH=$(npm bin):$PATH && which eslint'))
  if g:eslint_path != 'eslint not found'
    let g:neomake_javascript_eslint_exe = g:eslint_path
    let g:neomake_javascript_enabled_makers = g:neomake_javascript_enabled_makers + [ 'eslint']
  endif
endif

if findfile('.flowconfig', '.;') ==# ''
  let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))
  if g:flow_path != 'flow not found'
    let g:neomake_javascript_flow_maker = {
          \ 'exe': 'sh',
          \ 'args': ['-c', g:flow_path.' --json 2>/dev/null | ~/Projects/flow-vim-quickfix/bin/flow-vim-quickfix'],
          \ 'errorformat': '%E%f:%l:%c\,%n: %m',
          \ 'cwd': '%:p:h'
          \ }
    let g:neomake_javascript_enabled_makers = g:neomake_javascript_enabled_makers + [ 'flow']
    "let g:deoplete#sources#flow#flow_bin = g:flow_path

    let g:flow#flowpath = g:flow_path
  endif
endif

if !empty(g:neomake_javascript_enabled_makers)
  autocmd! BufWritePost,BufRead * Neomake
  "autocmd! BufWritePost * Neomake
  autocmd! QuitPre * let g:neomake_verbose = 0
endif
