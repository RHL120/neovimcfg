local opts = {
  client = {
    hover = {
      use_split = false, -- Persistent split instead of popups for hover
      split_size = '30%', -- Size of persistent split, if used
      auto_resize_split = false, -- Should resize split to use minimum space
      split_position = 'bottom', -- bottom, top, left or right
      with_history = false, -- Show history of hovers instead of only last
      use_as_popup = false, -- Close the split on cursor movement
    },
  },
  server = {}, -- Options passed to lspconfig idris2 configuration
  autostart_semantic = false, -- Should start and refresh semantic highlight automatically
  code_action_post_hook = function(action) end, -- Function to execute after a code action is performed:
  use_default_semantic_hl_groups = true, -- Set default highlight groups for semantic tokens
  default_regexp_syntax = true, -- Enable default highlight groups for traditional syntax based highlighting
}
require('idris2').setup(opts)
vim.keymap.set("n", "<leader>c", require('idris2.code_action').case_split)
vim.keymap.set("n", "<leader>mc", require('idris2.code_action').make_case)
vim.keymap.set("n", "<leader>mw", require('idris2.code_action').make_with)
vim.keymap.set("n", "<leader>ml", require('idris2.code_action').make_lemma)
vim.keymap.set("n", "<leader>a", require('idris2.code_action').add_clause)
vim.keymap.set("n", "<leader>o", require('idris2.code_action').expr_search)
vim.keymap.set("n", "<leader>gd", require('idris2.code_action').generate_def)
vim.keymap.set("n", "<leader>rh", require('idris2.code_action').refine_hole)
vim.keymap.set("n", "<leader>so", require('idris2.hover').open_split)
vim.keymap.set("n", "<leader>sc", require('idris2.hover').close_split)
vim.keymap.set("n", "<leader>mm", require('idris2.metavars').request_all)
vim.keymap.set("n", "<leader>mn", require('idris2.metavars').goto_next)
vim.keymap.set("n", "<leader>mp", require('idris2.metavars').goto_prev)
vim.keymap.set("n", "<leader>br", require('idris2.browse').browse)
vim.keymap.set("n", "<leader>x", require('idris2.repl').evaluate)
