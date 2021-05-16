" Dashboard
let g:dashboard_default_executive ='telescope'

" Clean Search
nnoremap <silent> <leader><space> :let @/=''<cr>

" Window
nnoremap <silent> <C-j> :resize -2<CR>
nnoremap <silent> <C-k> :resize +2<CR>
nnoremap <silent> <C-h> :vertical resize -2<CR>
nnoremap <silent> <C-l> :vertical resize +2<CR>
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" Moving
nnoremap j gj
nnoremap k gk

" Buffers & Tabs
nnoremap <silent> <Tab> :bn<CR>
nnoremap <silent> <S-Tab> :bp<CR>
nnoremap <silent> <C-d> :bd<CR>
nnoremap <silent> <C-t> :tabnew<CR>

" Commentaty
noremap <Leader>cc :Commentary<CR>

" Tree
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ]
nnoremap <silent> <C-n> :NvimTreeToggle<CR>
nnoremap <silent> <leader>r :NvimTreeRefresh<CR>
nnoremap <silent> <leader>n :NvimTreeFindFile<CR>

" UltiSnips
let g:UltiSnipsExpandTrigger="<A-Tab>"
let g:UltiSnipsJumpForwardTrigger="<A-Tab>"
let g:UltiSnipsJumpBackwardTrigger="<A-S-Tab>"

" FZF
let $FZF_DEFAULT_COMMAND='rg --files --follow --hidden'
" nnoremap <silent> <expr> <Leader><Leader> ":Files\<CR>"
" nnoremap <silent> <C-p> :Buffers<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Telescope
nnoremap <silent> <Leader><Leader> :Telescope find_files<CR>
nnoremap <silent> <C-p> :Telescope buffers<CR>

" Airline
let g:airline_theme='jellybeans'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
