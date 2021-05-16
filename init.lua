vim.g.mapleader = ','
vim.api.nvim_set_keymap("n", ";", ":", { noremap = true })

vim.cmd [[
  source ~/.config/nvim/config.vim
  source ~/.config/nvim/plugins.vim
  source ~/.config/nvim/settings.vim
  source ~/.config/nvim/keymappings.vim
]]
