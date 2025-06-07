require("options")
require("keymaps")

vim.api.nvim_create_autocmd("FileType", {
	pattern = "c,cpp",
	callback = function()
		--vim.bo.tabstop = 4
		vim.bo.shiftwidth = 4
		vim.bo.expandtab = false
	end,
})

vim.api.nvim_create_autocmd("TermOpen", {
	group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.neotree"),
	require("plugins.treesitter"),
	require("plugins.lspconfig"),
	require("plugins.autocomplete"),
	require("plugins.autoformat"),
	require("plugins.lualine"),
	require("plugins.colorscheme"),
})
