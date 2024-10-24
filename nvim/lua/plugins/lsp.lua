return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			local mason_lspconfig = require("mason-lspconfig")
			mason_lspconfig.setup({
				ensure_installed = {
					"lua_ls",
					"pylsp",
					"ts_ls",
					"html",
          "cssls",
					"jsonls",
				},
			})

			mason_lspconfig.setup_handlers({
				function(server)
					local opt = {
						capabilities = require("cmp_nvim_lsp").default_capabilities(
							vim.lsp.protocol.make_client_capabilities()
						),
					}
					require("lspconfig")[server].setup(opt)
				end,
			})

			vim.diagnostic.config({
				virtual_text = { severity = { min = vim.diagnostic.severity.ERROR } },
				signs = {
					text = {
						[vim.diagnostic.severity.WARN] = "",
						[vim.diagnostic.severity.ERROR] = "",
					},
					numhl = { [vim.diagnostic.severity.ERROR] = "ErrorMsg" },
				},
			})
		end,
	},
	"neovim/nvim-lspconfig",
}
