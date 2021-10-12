local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- Leader
g.mapleader = ','

-- General
opt.compatible = false
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.swapfile = false
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 240

-- Theme
opt.termguicolors = true
cmd [[colorscheme dracula]]

-- Editor
opt.number = true
opt.wrap = false
opt.signcolumn = 'yes'
opt.showmatch = true
opt.showmode = false
opt.foldmethod = 'marker'
opt.splitright = true
opt.splitbelow = true
opt.conceallevel = 0
opt.colorcolumn = '80'
opt.cursorline = true
opt.scrolloff = 10
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.list = true
opt.listchars = { eol = '¬' }
opt.shortmess:append {c = true}
opt.whichwrap:append {
  ['<'] = true,
  ['>'] = true,
  [','] = true,
  h = true,
  l = true
}

-- Terminal
cmd [[command! Term :botright split term://$SHELL]]
cmd [[
  autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
  autocmd TermOpen * startinsert
  autocmd BufLeave term://* stopinsert
]]
