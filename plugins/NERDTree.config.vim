let g:NERDTreeShowHidden = 1
let NERDTreeQuitOnOpen=1
let NERDTreeKeepTreeInNewTab=0
let NERDTreeDirArrows=1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeStatusline = ''
let g:NERDTreeWinSize = 25
let g:NERDTreeGitStatusWithFlags = 1

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeFind<CR>
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
