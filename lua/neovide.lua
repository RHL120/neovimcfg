if vim.fn.exists("g:neovide") then
	vim.opt.guifont = { "FiraCode Nerd Font", ":h7.5" }
	vim.g.neovide_scroll_animation_length = 0
	vim.g.neovide_cursor_animation_length = 0
	vim.g.neovide_cursor_trail_size = 0
end
