-- ╭──────────────────────────────────────────────────────╮
-- │                     Options                          │
-- ╰──────────────────────────────────────────────────────╯

local g = vim.g
local opt = vim.opt

-- Leader (must be set before lazy.nvim)
g.mapleader = " "
g.maplocalleader = "\\"

-- Font (for GUI clients like Neovide)
opt.guifont = "JetBrainsMono Nerd Font:h13"

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

-- Indentation (2 spaces)
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.shortmess:append({ c = true, I = true })

-- Yank highlight
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight on yank",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
