# nvim-config

Modern, lightweight Neovim configuration for **Next.js**, **TypeScript**, and **frontend** development with **AI** assistance.

## Features

- ⚡ **lazy.nvim** — Fast plugin manager with lazy-loading
- 🧠 **GitHub Copilot** — AI-powered code suggestions
- 🏗️ **LSP** — TypeScript, Tailwind CSS, ESLint, CSS, HTML, JSON via Mason
- 🎨 **Catppuccin** — Modern color scheme
- 🌳 **Treesitter** — Syntax highlighting for TS/TSX, JS/JSX, HTML, CSS, JSON, etc.
- 🔍 **Telescope** — Fuzzy finder for files, grep, buffers
- 📁 **NvimTree** — File explorer
- ✨ **Conform** — Auto-formatting with Prettier
- 💬 **Comment.nvim** — Toggle comments
- 🔀 **Gitsigns** — Git integration in the gutter
- 📊 **Lualine** — Lightweight statusline
- 📑 **Bufferline** — Buffer tabs
- 🔧 **nvim-cmp** — Autocompletion with snippets

## Requirements

- [Neovim 0.9+](https://neovim.io/)
- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) (for LSP servers)
- A [Nerd Font](https://www.nerdfonts.com/) (for icons)

## Install

Clone this repo to your Neovim config directory:

```bash
# Linux/Mac
git clone https://github.com/enriquesaid/nvim-config ~/.config/nvim

# Windows
git clone https://github.com/enriquesaid/nvim-config $env:LOCALAPPDATA\nvim
```

Open Neovim and plugins will be installed automatically by lazy.nvim.

LSP servers are installed automatically via Mason. For manual install:

```vim
:Mason
```

For GitHub Copilot:

```vim
:Copilot auth
```

## Keybindings

**Leader key: `Space`**

| Key | Action |
|-----|--------|
| `<Space><Space>` | Find files |
| `<Space>fg` | Live grep |
| `<Space>fb` | Buffers |
| `<Space>fh` | Help tags |
| `<Space>e` | File explorer |
| `<Space>f` | Format buffer |
| `<Space>ca` | Code action |
| `<Space>rn` | Rename symbol |
| `<Space>d` | Line diagnostics |
| `<Tab>` / `<S-Tab>` | Next/Prev buffer |
| `gcc` | Toggle comment (line) |
| `gc` | Toggle comment (visual) |
| `gd` | Go to definition |
| `gr` | References |
| `K` | Hover documentation |
| `<Alt-l>` | Accept Copilot suggestion |
| `<C-n>` | Toggle file tree |

## Structure

```
init.lua                  — Entry point + lazy.nvim bootstrap
lua/
  settings.lua           — Editor settings
  keymaps.lua            — Key mappings
  plugins/
    colorscheme.lua      — Catppuccin theme
    treesitter.lua       — Syntax highlighting
    lsp.lua              — LSP + Mason
    cmp.lua              — Autocompletion
    telescope.lua        — Fuzzy finder
    ui.lua               — Lualine, bufferline, indent
    editor.lua           — Autopairs, comments, surround
    git.lua              — Gitsigns
    formatting.lua       — Conform (Prettier)
    copilot.lua          — GitHub Copilot
    nvim-tree.lua        — File explorer
```
