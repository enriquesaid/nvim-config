local map = vim.keymap.set

-- Command
map("n", ";", ":", { noremap = true })

-- Terminal
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- Clear search
map("n", "<Esc>", "<cmd>nohlsearch<CR>", { silent = true })

-- Window navigation
map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Window splits
map("n", "<Leader>h", "<cmd>split<CR>", { noremap = true, silent = true })
map("n", "<Leader>v", "<cmd>vsplit<CR>", { noremap = true, silent = true })

-- Window resize
map("n", "<C-Up>", "<cmd>resize +2<CR>", { noremap = true, silent = true })
map("n", "<C-Down>", "<cmd>resize -2<CR>", { noremap = true, silent = true })
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { noremap = true, silent = true })
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { noremap = true, silent = true })

-- Moving in wrapped lines
map("n", "j", "gj", { noremap = true, silent = true })
map("n", "k", "gk", { noremap = true, silent = true })

-- Buffers
map("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { noremap = true, silent = true })
map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { noremap = true, silent = true })
map("n", "<Leader>bd", "<cmd>bdelete<CR>", { noremap = true, silent = true, desc = "Close buffer" })

-- Move lines in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
map("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Better indenting
map("v", "<", "<gv", { noremap = true, silent = true })
map("v", ">", ">gv", { noremap = true, silent = true })

-- NvimTree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })
map("n", "<Leader>e", "<cmd>NvimTreeFindFileToggle<CR>", { noremap = true, silent = true, desc = "Explorer" })

-- Diagnostics
map("n", "<Leader>d", vim.diagnostic.open_float, { desc = "Line diagnostics" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
