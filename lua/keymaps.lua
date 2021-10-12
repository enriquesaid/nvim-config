local set = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

-- Command
set("n", ";", ":", { noremap = true })

-- Terminal
set("t", "<Esc>", "<C-\\><C-n><C-w><C-w>", ns)

-- Clean Search
set("n", "<Leader><Space>", ":let @/=''<CR>", ns)

-- Window
set("n", "<C-j>", ":resize -2<CR>", ns)
set("n", "<C-k>", ":resize +2<CR>", ns)
set("n", "<C-h>", ":vertical resize -2<CR>", ns)
set("n", "<C-l>", ":vertical resize +2<CR>", ns)
set("n", "<Leader>h", ":<C-u>split<CR>", ns)
set("n", "<Leader>v", ":<C-u>vsplit<CR>", ns)

-- Moving
set("n", "j", "gj", ns)
set("n", "k", "gk", ns)

-- Buffers
set("n", "<Tab>", ":BufferLineCycleNext<CR>", ns)
set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", ns)
set("n", "<C-d>", ":bd<CR>", ns)
set("n", "<C-t>", ":tabnew<CR>", ns)

-- Nvim Tree
set("n", "<C-n>", ":NvimTreeToggle<CR>", ns)
set("n", "<Leader>n", ":NvimTreeFindFile<CR>", ns)

-- Telescope
set("n", "<Leader><Leader>", ":Telescope find_files<CR>", ns)
set("n", "<C-p>", ":Telescope buffers<CR>", ns)

-- Commentary
set("n", "<Leader>cc", ":Commentary<CR>", ns)
set("v", "<Leader>cc", ":Commentary<CR>", ns)
