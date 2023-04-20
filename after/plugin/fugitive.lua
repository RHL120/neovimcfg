vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
vim.keymap.set("n", "<leader>gc", function()
	vim.cmd("G commit")
end);
vim.keymap.set("n", "<leader>gp", function()
	vim.cmd("G diff")
end);
