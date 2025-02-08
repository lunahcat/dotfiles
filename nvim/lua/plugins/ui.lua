return {
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup()
			vim.keymap.set("n", "<C-j>", "<Cmd>NvimTreeToggle<CR>")
		end
	},
	"nvim-tree/nvim-web-devicons",
	"romgrk/barbar.nvim",
}
