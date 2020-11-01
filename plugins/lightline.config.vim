let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'currentfunction', 'coc_errors', 'coc_warnings', 'coc_ok', 'filename', 'modified' ] ],
      \   'right': [ [ 'coc_status' ] ]
      \ },
      \ 'tabline': {
      \   'right': [ [ 'fugitive' ] ],
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction',
      \   'fugitive': 'FugitiveHead',
      \   'filename': 'MyFilename',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '⮁', 'right': '|' }
      \ }

call lightline#coc#register()

function! MyFilename()
  return '' != expand('%') ? expand('%') : '[NoName]'
endfunction

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction
