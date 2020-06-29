call plug#begin('~/.vim/plugged')
  " General
    Plug 'itchyny/lightline.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'voldikss/vim-floaterm', {
          \ 'on': [
              \ 'FloatermNew',
              \ 'FloatermToggle',
              \ 'FloatermPrev',
              \ 'FloatermNext',
              \ 'FloatermHide'
          \ ] }
    Plug 'TaDaa/vimade'
    Plug 'tpope/vim-surround'
    Plug 'craigemery/vim-autotag'
    Plug 'pbrisbin/vim-mkdir'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'Raimondi/delimitMate'
    Plug 'majutsushi/tagbar'
    Plug 'Yggdroot/indentLine'

  " Theme
    Plug 'dracula/vim', { 'as': 'dracula' }

  " File Explore
    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'tsony-tsonev/nerdtree-git-plugin'

  " Searching
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'rking/ag.vim'

    let g:make = 'gmake'
    if exists('make')
            let g:make = 'make'
    endif
    Plug 'Shougo/vimproc.vim', {'do': g:make}

  " IntelliSense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Comments
    Plug 'tpope/vim-commentary'

    "" Vim-Session
    Plug 'xolox/vim-misc'
    Plug 'xolox/vim-session'

  " Startup
    Plug 'mhinz/vim-startify'

  " Git {{{
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'rbong/vim-flog', {
            \ 'on': [
                \ 'Flog',
                \ 'Flogsplit'
            \ ] }
    Plug 'ruanyl/vim-gh-line'
    Plug 'junegunn/vim-github-dashboard'
    Plug 'airblade/vim-gitgutter'
  " }}}

  " HTML {{{
    Plug 'othree/html5.vim', { 'for': 'html' }
    Plug 'hokaccha/vim-html5validator', { 'for':  'html' }
    Plug 'mustache/vim-mustache-handlebars'
  " }}}

  " CSS {{{
    Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
    Plug 'gko/vim-coloresque', { 'for': ['css', 'scss', 'sass', 'stylus'] }
  " }}}

  " JavaScript {{{
      Plug 'pangloss/vim-javascript', { 'for':  'javascript' }
      if executable('npm')
        Plug 'prettier/vim-prettier', {
              \ 'do': 'npm install',
              \ 'for': [
              \ 'dart',
              \ 'javascript',
              \ 'html',
              \ 'typescript',
              \ 'css',
              \ 'less',
              \ 'scss',
              \ 'json',
              \ 'graphql',
              \ 'markdown',
              \ 'vue',
              \ 'yaml'
              \ ] }
      endif
  " }}}

  " JSON {{{
    Plug 'elzr/vim-json', { 'for': 'json' }
  " }}}

  " Dart {{{
    Plug 'dart-lang/dart-vim-plugin'
  " }}}

  " Go {{{
    if executable('go')
        Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoInstallBinaries' }
        Plug 'mdempsky/gocode', { 'for': 'go' }
    endif
  " }}}

  " Ruby/Rails {{{
      Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
      Plug 'tpope/vim-rails', { 'for': 'ruby' }
  " }}}

  " Sonic PI {{{
      Plug 'Widdershin/sonic-pi-cli'
  " }}}
call plug#end()
