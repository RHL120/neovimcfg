local lsp = require('lsp-zero')
lsp.preset('recommended')
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})
lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
})
lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})
lsp.setup()
local nvim_lsp = require('lspconfig')
