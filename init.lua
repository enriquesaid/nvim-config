-- ╭──────────────────────────────────────────────────────╮
-- │                   Neovim v0.12+                      │
-- │          LazyVim + Modern Rust/Zig Plugins           │
-- ╰──────────────────────────────────────────────────────╯

-- Core settings (before plugins)
require("config.options")
require("config.keymaps")

-- Bootstrap lazy.nvim & load LazyVim + plugins
require("config.lazy")
