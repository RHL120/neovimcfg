vim.g.lsp_zero_extend_lspconfig = 0
local lsp = require('lsp-zero')
vim.g.lsp_zero_extend_cmp = 0
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
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
  ['<Tab>'] = cmp.mapping.complete(),
  ['<Tab>'] = cmp.mapping.select_next_item({ select = true }),
  ['<S-Tab>'] = cmp.mapping.select_prev_item({ select = true }),
})
cmp.setup({
  mapping = cmp_mappings
})
lsp.setup()
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp.default_setup,
  },
})
