return {
	"ellisonleao/gruvbox.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Опционально, если нужны дополнительные зависимости
	},
	config = function()
		-- Настройки для gruvbox
		vim.cmd("colorscheme gruvbox")
	end,
}
