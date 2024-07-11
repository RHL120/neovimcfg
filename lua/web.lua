-- Create an autocommand group named "web_settings"
local web_group = vim.api.nvim_create_augroup("web_settings", { clear = true })

-- Add an autocmd to set web development-specific indentation rules
vim.api.nvim_create_autocmd("FileType", {
  group = web_group,
  pattern = {"html", "css", "javascript", "typescript"},
  callback = function()
    vim.opt_local.expandtab = true  -- Convert tabs to spaces
    vim.opt_local.shiftwidth = 2    -- Set indent size to 2 spaces
    vim.opt_local.tabstop = 2       -- Set tab display size to 2 spaces
  end,
})
