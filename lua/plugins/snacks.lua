-- ╭──────────────────────────────────────────────────────╮
-- │      snacks.nvim — UI suite + Picker (replaces       │
-- │      Telescope, indent-blankline, bufferline)        │
-- ╰──────────────────────────────────────────────────────╯

return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      -- ── Dashboard ─────────────────────────────────────
      dashboard = {
        enabled = true,
        preset = {
          header = [[
 ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
 ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
 ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
 ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
 ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
 ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
          ]],
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.picker.files()" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.picker.grep()" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.picker.recent()" },
            { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.picker.files({ cwd = vim.fn.stdpath('config') })" },
            { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy" },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
      },

      -- ── Picker (replaces Telescope) ──────────────────
      picker = {
        enabled = true,
      },

      -- ── Indent guides ────────────────────────────────
      indent = {
        enabled = true,
        animate = { enabled = true },
      },

      -- ── Input (vim.ui.input replacement) ──────────────
      input = { enabled = true },

      -- ── Notifier (vim.notify replacement) ─────────────
      notifier = {
        enabled = true,
        timeout = 3000,
      },

      -- ── Smooth scrolling ─────────────────────────────
      scroll = { enabled = true },

      -- ── Terminal ──────────────────────────────────────
      terminal = { enabled = true },

      -- ── Other useful modules ─────────────────────────
      bigfile = { enabled = true },
      quickfile = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
    keys = {
      -- Picker keymaps (replacing Telescope)
      { "<Leader><Leader>", function() Snacks.picker.files() end, desc = "Find Files" },
      { "<Leader>fg", function() Snacks.picker.grep() end, desc = "Grep" },
      { "<Leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
      { "<Leader>fh", function() Snacks.picker.help() end, desc = "Help Pages" },
      { "<Leader>fr", function() Snacks.picker.recent() end, desc = "Recent Files" },
      { "<Leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Config Files" },
      { "<Leader>fw", function() Snacks.picker.grep_word() end, desc = "Grep Word", mode = { "n", "x" } },
      { "<Leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
      { "<Leader>gc", function() Snacks.picker.git_log() end, desc = "Git Log" },
      -- Terminal
      { "<C-/>", function() Snacks.terminal() end, desc = "Toggle Terminal" },
      -- Notifier
      { "<Leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss Notifications" },
    },
  },
}
