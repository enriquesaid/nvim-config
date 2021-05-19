" vim-plug installer
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

" Plugins
call plug#begin('~/.vim/plugged')

" Lua
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'

" Start
Plug 'glepnir/dashboard-nvim'

" Theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'folke/tokyonight.nvim'

" Visual
Plug 'kyazdani42/nvim-web-devicons'
Plug 'TaDaa/vimade'
Plug 'RRethy/vim-illuminate'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

" Syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Text
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'

" Tab
Plug 'romgrk/barbar.nvim'

" Files
Plug 'pbrisbin/vim-mkdir'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-tree.lua'

" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'hrsh7th/vim-vsnip'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Code Formatter
Plug 'prettier/vim-prettier'

" HTML
Plug 'mattn/emmet-vim'

" Javascript & Typescript
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" JSON
Plug 'elzr/vim-json', { 'for': 'json' }

" Dart
Plug 'dart-lang/dart-vim-plugin'

" Markdown
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'

call plug#end()
