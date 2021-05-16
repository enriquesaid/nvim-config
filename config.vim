set nocompatible
set noswapfile
filetype plugin indent on
set termguicolors
set t_Co=256
autocmd BufWritePre * :%s/\s\+$//e
