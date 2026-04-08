# nvim-config

Modern, modular Neovim v0.12+ configuration based on **LazyVim** with next-gen Rust/Zig-powered plugins for maximum performance.

## ✨ Features

- 🚀 **LazyVim** — Framework base with sensible defaults
- ⚡ **blink.cmp** — Rust-powered completion engine (replaces nvim-cmp)
- 🔍 **snacks.nvim** — Full UI suite with picker (replaces Telescope), dashboard, indent guides, notifier, smooth scrolling, terminal
- 🤖 **avante.nvim** — Cursor-style AI coding experience
- 🧠 **GitHub Copilot** — AI-powered inline suggestions
- 📁 **oil.nvim** — Edit directories as buffers (replaces NvimTree)
- 🏗️ **LSP** — TypeScript, Tailwind CSS, ESLint, CSS, HTML, JSON, Lua via Mason
- 🎨 **Catppuccin Mocha** — Modern color scheme
- 💅 **noice.nvim** — Floating command line and modern message UI
- 🌳 **Treesitter** — Syntax highlighting with `auto_install`
- ✨ **Conform** — Auto-formatting with Prettier/Stylua
- 🔀 **Gitsigns** — Git integration in the gutter
- 🔑 **which-key.nvim** — Keymap discoverability

## 📋 Requirements

### System Dependencies (Critical)

```bash
# macOS (Homebrew)
brew install neovim git curl fd ripgrep gcc

# Ubuntu/Debian
sudo apt install neovim git curl fd-find ripgrep build-essential

# Arch Linux
sudo pacman -S neovim git curl fd ripgrep gcc
```

### Font

Install [JetBrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads):

```bash
# macOS
brew install --cask font-jetbrains-mono-nerd-font

# Linux (manual)
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLO "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip"
unzip JetBrainsMono.zip -d JetBrainsMono
fc-cache -fv
```

### Node.js

Required for LSP servers:

```bash
# Via nvm (recommended)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
nvm install --lts
```

## 🚀 Install

### 1. Backup existing config

```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### 2. Clone this repo

```bash
git clone https://github.com/enriquesaid/nvim-config ~/.config/nvim
```

### 3. Open Neovim

```bash
nvim
```

All plugins are installed automatically by lazy.nvim on first launch.

### 4. Post-install

```vim
" Install LSP servers
:Mason

" Authenticate GitHub Copilot
:Copilot auth

" Check health
:checkhealth
```

### 5. AI Provider Setup (avante.nvim)

By default, avante.nvim uses Copilot. To use other providers, set environment variables:

```bash
# OpenAI
export OPENAI_API_KEY="sk-..."

# Anthropic (Claude)
export ANTHROPIC_API_KEY="sk-ant-..."
```

## ⌨️ Keybindings

**Leader key: `Space`**

### Navigation & Files

| Key | Action |
|-----|--------|
| `<Space><Space>` | Find files (snacks.picker) |
| `<Space>fg` | Grep text |
| `<Space>fb` | Buffers |
| `<Space>fh` | Help pages |
| `<Space>fr` | Recent files |
| `<Space>fc` | Config files |
| `<Space>fw` | Grep word under cursor |
| `-` | Open parent directory (Oil) |
| `<Space>e` | File explorer (Oil) |

### Git

| Key | Action |
|-----|--------|
| `<Space>gs` | Git status |
| `<Space>gc` | Git log |

### LSP

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gi` | Go to implementation |
| `gr` | References |
| `K` | Hover documentation |
| `<Space>rn` | Rename symbol |
| `<Space>ca` | Code action |
| `<Space>d` | Line diagnostics |

### AI

| Key | Action |
|-----|--------|
| `<Space>aa` | Avante: Ask AI |
| `<Space>ae` | Avante: Edit (visual) |
| `<Space>ar` | Avante: Refresh |
| `<Space>at` | Avante: Toggle sidebar |
| `<Alt-l>` | Accept Copilot suggestion |
| `<Alt-j>` | Accept Copilot line |
| `<Alt-k>` | Accept Copilot word |

### General

| Key | Action |
|-----|--------|
| `<Space>f` | Format buffer |
| `<Shift-H>` / `<Shift-L>` | Prev/Next buffer |
| `<Space>bd` | Close buffer |
| `<C-/>` | Toggle terminal |
| `<Space>un` | Dismiss notifications |

## 📂 Structure

```
init.lua                    — Entry point
lua/
  config/
    options.lua             — Editor settings (indent, numbers, clipboard, yank highlight)
    keymaps.lua             — Core key mappings
    lazy.lua                — lazy.nvim bootstrap + LazyVim setup
  plugins/
    ai.lua                  — avante.nvim + GitHub Copilot
    blink.lua               — blink.cmp (Rust completion engine)
    colorscheme.lua         — Catppuccin Mocha
    editor.lua              — Autopairs, surround, which-key
    formatting.lua          — Conform (Prettier/Stylua)
    git.lua                 — Gitsigns
    lsp.lua                 — Mason + nvim-lspconfig (blink.cmp integration)
    noice.lua               — Floating cmdline + modern messages
    oil.lua                 — Oil.nvim file explorer
    snacks.lua              — snacks.nvim (picker, dashboard, indent, notifier, scroll, terminal)
    treesitter.lua          — Treesitter with auto_install
```

## 🖥️ Terminal Setup (Ghostty)

For the best experience, configure your terminal to match:

```bash
# ~/.config/ghostty/config
font-family = "JetBrainsMono NFM"
font-size = 13
theme = "catppuccin-mocha"
background-opacity = 0.95
background-blur = true
window-decoration = false
```

## ⚡ Performance Notes

- **blink.cmp** uses a Rust-compiled fuzzy matcher — significantly faster than nvim-cmp in large projects
- **snacks.picker** replaces Telescope with native performance optimizations
- Plugins are lazy-loaded via LazyVim's smart loading system
- Tree-sitter parsers are compiled with your system's C compiler (gcc/clang)

