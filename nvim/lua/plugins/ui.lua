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
			local keymap = vim.keymap
			keymap.set("n", "<C-j>", "<Cmd>NvimTreeToggle<CR>")
			keymap.set("n", "<C-h>", "<C-w>h")
			keymap.set("n", "<C-l>", "<C-w>l")
		end,
	},
	{
		"romgrk/barbar.nvim",
		config = function()
			require("barbar").setup()
			local keymap = vim.keymap
			keymap.set("n", "<S-l>", "<Cmd>BufferNext<CR>")
			keymap.set("n", "<S-h>", "<Cmd>BufferPrevious<CR>")
			keymap.set("n", "<S-q>", "<Cmd>BufferClose<CR>")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup()
		end,
	},
}
