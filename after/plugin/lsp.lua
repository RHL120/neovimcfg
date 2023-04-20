local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})
local nvim_lsp = require('lspconfig')
nvim_lsp.hls.setup{}
vim.g.LanguageClient_serverCommands = {
  scala = { 'metals', '--lsp' },
}

