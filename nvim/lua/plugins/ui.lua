return {
	"nvim-tree/nvim-web-devicons",
	{
		"nvim-tree/nvim-tree.lua",
		opt = {
			animation = false,
		},
		config = function()
			require("nvim-tree").setup({
				filters = {
					custom = { "^\\._" },
				},
			})
			vim.keymap.set("n", "<C-j>", "<Cmd>NvimTreeToggle<CR>")
		end,
	},
	{
		"romgrk/barbar.nvim",
		config = function()
			require("barbar").setup()
			vim.keymap.set("n", "<S-l>", "<Cmd>BufferNext<CR>")
			vim.keymap.set("n", "<S-h>", "<Cmd>BufferPrevious<CR>")
			vim.keymap.set("n", "<S-q>", "<Cmd>BufferClose<CR>")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup()
		end,
	},
}
