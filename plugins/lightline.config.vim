let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'left': [ ['mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'right': [ ['fugitive'] ],
      \ },
      \ 'component_function': {
      \   'fugitive': 'FugitiveHead',
      \   'readonly': 'MyReadonly',
      \   'filename': 'MyFilename',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '⮁', 'right': '|' }
      \ }

function! MyReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "⭤ "
  else
    return ""
  endif
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
       \ ('' != expand('%') ? expand('%') : '[NoName]')
endfunction


" Options
set noshowmode
set laststatus=2 " Use status bar even with single buffer
