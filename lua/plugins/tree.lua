local g = vim.g

g.nvim_tree_quit_on_open = 1

require('nvim-tree').setup{
  auto_close = true,
  filters = {
    custom = {'.git', 'node_modules', '.cache'}
  }
}

