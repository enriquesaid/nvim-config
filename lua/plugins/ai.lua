-- ╭──────────────────────────────────────────────────────╮
-- │   AI Coding — avante.nvim (Cursor-style) + Copilot   │
-- ╰──────────────────────────────────────────────────────╯

return {
  -- ── GitHub Copilot ────────────────────────────────────
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<M-l>",
          accept_word = "<M-k>",
          accept_line = "<M-j>",
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        ["*"] = true,
      },
    },
  },

  -- ── Avante.nvim — Cursor-style AI experience ─────────
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      -- Copilot as a provider source
      "zbirenbaum/copilot.lua",
    },
    opts = {
      -- ── Provider Configuration ────────────────────────
      -- Default provider (change to your preferred one)
      provider = "copilot",
      -- Available providers with placeholders
      copilot = {
        model = "gpt-4o",
      },
      openai = {
        endpoint = "https://api.openai.com/v1",
        model = "gpt-4o",
        api_key_name = "OPENAI_API_KEY", -- export OPENAI_API_KEY=your-key
      },
      claude = {
        endpoint = "https://api.anthropic.com",
        model = "claude-sonnet-4-20250514",
        api_key_name = "ANTHROPIC_API_KEY", -- export ANTHROPIC_API_KEY=your-key
      },
      -- ── Behaviour ─────────────────────────────────────
      behaviour = {
        auto_suggestions = false,
        auto_set_highlight_group = true,
        auto_set_keymaps = true,
        support_paste_from_clipboard = true,
      },
      -- ── Windows ───────────────────────────────────────
      windows = {
        position = "right",
        width = 40,
        sidebar_header = {
          align = "center",
          rounded = true,
        },
      },
      -- ── Hints ─────────────────────────────────────────
      hints = { enabled = true },
    },
    keys = {
      { "<Leader>aa", function() require("avante.api").ask() end, desc = "Avante: Ask", mode = { "n", "v" } },
      { "<Leader>ae", function() require("avante.api").edit() end, desc = "Avante: Edit", mode = "v" },
      { "<Leader>ar", function() require("avante.api").refresh() end, desc = "Avante: Refresh" },
      { "<Leader>at", "<cmd>AvanteToggle<CR>", desc = "Avante: Toggle" },
    },
  },
}
