local g = vim.g
local opt = vim.opt

-- Leader
g.mapleader = " "
g.maplocalleader = " "

-- General
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.swapfile = false
opt.undofile = true
opt.hidden = true
opt.updatetime = 250
opt.timeoutlen = 300

-- Theme
opt.termguicolors = true

-- Editor
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.signcolumn = "yes"
opt.showmode = false
opt.splitright = true
opt.splitbelow = true
opt.cursorline = true
opt.scrolloff = 10
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.ignorecase = true
opt.smartcase = true
opt.shortmess:append({ c = true, I = true })

-- Terminal
vim.cmd([[command! Term :botright split term://$SHELL]])
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.cursorline = false
    vim.cmd("startinsert")
  end,
})
