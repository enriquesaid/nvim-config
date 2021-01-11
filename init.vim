set nocompatible
filetype off
let mapleader = ","
nnoremap ; :

" Plugins
source $HOME/.config/nvim/plugins.vim
for f in split(glob('$HOME/.config/nvim/plugins/*.config.vim'), '\n')
  exe 'source' f
endfor

" Settings
syntax on
set hidden
set autoread
set title
set number
set wrap
set textwidth=80
set tabstop=2
set shiftwidth=2
set softtabstop=0
set shiftround
set expandtab
set list
set nobackup
set nowritebackup
set relativenumber
set linebreak
set showtabline=2
set laststatus=2
set cc=80
set autoindent
set smartindent
set timeoutlen=1000
set ttimeoutlen=0
set updatetime=300
set signcolumn=yes
set noswapfile
set autoread
set wildmenu
set wildignore+=.hg,.git,.svn
set wildignore+=*.DS_Store
set wildignore+=*/node_modules/*,*/vendor/*,*/build/*
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Encodings
set encoding=utf8
set fileencodings=utf8,cp1251
set termencoding=utf-8

" Cursor
set scrolloff=10
set backspace=indent,eol,start
set mousehide
set mouse=a

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr>

" Netrw
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 15

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

" Window resize
nnoremap <silent> <C-j> :resize -2<CR>
nnoremap <silent> <C-k> :resize +2<CR>
nnoremap <silent> <C-h> :vertical resize -2<CR>
nnoremap <silent> <C-l> :vertical resize +2<CR>
set splitbelow
set splitright

" Moving
nnoremap j gj
nnoremap k gk
nmap <silent> <Tab> :tabnext<CR>
nmap <silent> <S-Tab> :tabprevious<CR>

" Comments
noremap <Leader>cc :Commentary<CR>

" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

" Session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" Split & Tab
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>
nmap <silent> <C-t> :tabnew <CR>

" Color Scheme
colorscheme dracula
highlight Normal ctermbg=NONE
highlight Floaterm ctermbg=232

