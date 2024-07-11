-- Create an autocommand group named "haskell_settings"
local haskell_group = vim.api.nvim_create_augroup("haskell_settings", { clear = true })

-- Add an autocmd to set Haskell-specific indentation rules
vim.api.nvim_create_autocmd("FileType", {
  group = haskell_group,
  pattern = "haskell",
  callback = function()
    vim.opt_local.expandtab = true  -- Convert tabs to spaces
    vim.opt_local.shiftwidth = 2    -- Set indent size to 2 spaces
    vim.opt_local.tabstop = 2       -- Set tab display size to 2 spaces
  end,
})
