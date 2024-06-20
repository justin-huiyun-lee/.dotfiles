vim.g.mapleader = " "

-- highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Go back to nvim default file tree
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Source the current file
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- wipe the entire file (delete all lines)
vim.keymap.set("n", "<leader>wipe", function()
	vim.cmd("%d")
end)

-- copy the entire file to clipboard
vim.keymap.set("n", "<leader>cc", "gg<S-v>Gy")

-- save and quit file (quit safe)
vim.keymap.set("n", "<leader>qs", function()
	vim.cmd("wqa")
end)

-- force quit file (quit force)
vim.keymap.set("n", "<leader>qf", function()
	vim.cmd("q!")
end)

-- Move a selection of lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- When searching and moving to the next match, center screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without copying the text
vim.keymap.set("v", "<leader>p", '"_dP')

-- Delete without copying the text
vim.keymap.set("v", "<leader>dd", '"_d')

-- Get file tree on the right side
vim.keymap.set("n", "<leader>of", function()
	vim.cmd("Neotree right")
end)

-- Pull up fuzzy finder
vim.keymap.set("n", "<leader>pf", function()
	vim.cmd("Telescope find_files")
end)

-- save the file
vim.keymap.set("n", "<leader>wf", function()
	vim.cmd("wa")
end)

-- remove search highlights
vim.keymap.set("n", "<leader>rh", function()
	vim.cmd("noh")
end)
