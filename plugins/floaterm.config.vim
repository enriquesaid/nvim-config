let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'
let g:floaterm_position = 'bottom'
let g:floaterm_width = 0.99
let g:floaterm_wintitle = v:false
let g:floaterm_gitcommit='floaterm'

nnoremap <silent> <C-\> <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent> <C-\> <C-\><C-n>:FloatermToggle<CR>
