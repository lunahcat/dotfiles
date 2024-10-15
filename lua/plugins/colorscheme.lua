return {
	"catppuccin/nvim",
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
		})
		vim.cmd.colorscheme("catppuccin")
		vim.cmd("highlight Normal ctermbg=NONE guibg=NONE")
	end,
}
