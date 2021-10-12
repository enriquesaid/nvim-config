local g = vim.g

g.nvim_tree_ignore = {'.git', 'node_modules', '.cache'}
g.nvim_tree_quit_on_open = 1

require('nvim-tree').setup{
  auto_close = true,
}

