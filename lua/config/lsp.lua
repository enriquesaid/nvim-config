local on_attach = function(_, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  local opts = { noremap = true, silent = true }

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  buf_set_keymap('n', '<leader>ca', ':Lspsaga code_action<CR>', opts)
  buf_set_keymap('v', '<leader>ca', ':Lspsaga range_code_action<CR>', opts)
  buf_set_keymap('n', '<leader>rn', ':Lspsaga rename<CR>', opts)
  buf_set_keymap('n', 'K', ':Lspsaga hover_doc<CR>', opts)
  buf_set_keymap('n', 'dn', ':Lspsaga diagnostic_jump_next<CR>', opts)
  buf_set_keymap('n', 'dp', ':Lspsaga diagnostic_jump_prev<CR>', opts)
  buf_set_keymap('n', 'gf', ':lua vim.lsp.buf.definition()<CR>', opts)
end

require'lspsaga'.init_lsp_saga()
require'lspinstall'.setup()
local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{ on_attach = on_attach }
end

require'lspconfig'.lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}
