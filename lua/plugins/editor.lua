-- ╭──────────────────────────────────────────────────────╮
-- │              Editor utilities                        │
-- ╰──────────────────────────────────────────────────────╯

return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = true,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
  },
}
