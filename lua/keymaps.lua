vim.g.leader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", opts)

vim.keymap.set("n", "<C-s>", "<cmd>noautocmd w <CR>", opts)
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)
vim.keymap.set("n", "<space>d", "<cmd> close <CR>", opts)

vim.keymap.set("n", "<Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize +2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize -2<CR>", opts)

vim.keymap.set("n", "<C-e>", ":Neotree toggle position=left<CR>", opts)

vim.keymap.set("n", "x", '"_x', opts)

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("i", "<Up>", "<Nop>", opts)
vim.keymap.set("i", "<Down>", "<Nop>", opts)
vim.keymap.set("i", "<Left>", "<Nop>", opts)
vim.keymap.set("i", "<Right>", "<Nop>", opts)

vim.keymap.set("n", "<space>st", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 5)
end)
