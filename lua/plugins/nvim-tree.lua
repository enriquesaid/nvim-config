return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = { "NvimTreeToggle", "NvimTreeFindFileToggle" },
  opts = {
    filters = {
      custom = { ".git", "node_modules", ".cache", ".next" },
    },
    view = {
      width = 30,
    },
    renderer = {
      indent_markers = { enable = true },
    },
    actions = {
      open_file = {
        quit_on_open = true,
      },
    },
  },
}
