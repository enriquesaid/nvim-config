-- ╭──────────────────────────────────────────────────────╮
-- │          Catppuccin — Mocha variant                  │
-- ╰──────────────────────────────────────────────────────╯

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = {
      flavour = "mocha",
      transparent_background = false,
      integrations = {
        blink_cmp = true,
        gitsigns = true,
        treesitter = true,
        mason = true,
        noice = true,
        snacks = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        indent_blankline = {
          enabled = true,
          scope_color = "lavender",
        },
      },
    },
  },
}
