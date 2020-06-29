nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF\<CR>"
nnoremap <silent> <C-p> :Buffers<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" if you don't have any of the above you can still use `GitFiles`
" https://github.com/junegunn/fzf.vim/issues/121
if executable('ag')
    let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g "."'
elseif executable('fd')
    let $FZF_DEFAULT_COMMAND = 'fd --type f --hidden --exclude .git'
elseif executable('rg')
    let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git"'
endif

if has('nvim') && exists("*nvim_open_win")
    " fix hideous sign column
    let g:fzf_colors = {
      \ "fg+": ["fg", "CursorLine", "CursorColumn", "Normal"],
      \ "bg+": ["bg", "ColorColumn", "CursorLine", "CursorColumn", "Normal"]}

    let $FZF_DEFAULT_OPTS="--layout=reverse --info=inline --margin=1,4 --preview 'pygmentize -g {}'"
    " let g:fzf_layout = { 'window': 'call FloatingFZF()' }
    let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }

    function! FloatingFZF()
        let buf = nvim_create_buf(v:false, v:true)
        call setbufvar(buf, '&signcolumn', 'no')

        let height = 10
        if &lines > 10
            let height = float2nr(&lines * 0.5) " 50%
        endif

        let width = 80
        if &columns > 110
            let width = float2nr(&columns * 0.8) " 80%
        endif

        let horizontal = float2nr((&columns - width) / 2)
        let vertical = 1

        let opts = {
            \ 'relative': 'editor',
            \ 'anchor': 'NW',
            \ 'row': vertical,
            \ 'col': horizontal,
            \ 'width': width,
            \ 'height': height,
            \ 'style': 'minimal',
            \ }

        call nvim_open_win(buf, v:true, opts)
    endfunction
endif
