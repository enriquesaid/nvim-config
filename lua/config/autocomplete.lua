require'compe'.setup {
  enabled = true;
  preselect = 'disable';
  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
    treesitter = true;
  };
}

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
  local col = vim.fn.col('.') - 1
  if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
    return true
  else
    return false
  end
end

vim.g.vsnip_filetypes = {
  typescriptreact = {"typescript"}
}

_G.tab_complete_next = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn.call("vsnip#available", {1}) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.tab_complete_prev = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    return t "<S-Tab>"
  end
end

local opt = { expr = true, silent = true}
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete_next()", opt)
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete_next()", opt)
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.tab_complete_prev()", opt)
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.tab_complete_prev()", opt)
vim.api.nvim_set_keymap("i", "<C-Space>", "compe#complete()", opt)
vim.api.nvim_set_keymap("i", "<CR>", 'compe#confirm("<CR>")', opt)
vim.api.nvim_set_keymap("i", "<Esc>", 'compe#close("<Esc>")', opt)
