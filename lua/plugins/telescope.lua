return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  keys = {
    { "<Leader><Leader>", "<cmd>Telescope find_files<CR>", desc = "Find files" },
    { "<Leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Live grep" },
    { "<Leader>fb", "<cmd>Telescope buffers<CR>", desc = "Buffers" },
    { "<Leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Help" },
  },
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    defaults = {
      file_ignore_patterns = { "node_modules", ".git/", ".next/", "dist/" },
    },
  },
}
