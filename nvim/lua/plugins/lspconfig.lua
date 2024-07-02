return {
	{
		"williamboman/mason.nvim",

		config = function()
			require("mason").setup()
		end,
	},

	{
		"neovim/nvim-lspconfig",

		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			require("lspconfig").lua_ls.setup({
				capabilities = capabilities,

				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			require("lspconfig").clangd.setup({
				capabilities = capabilities,
			})

			require("lspconfig").pyright.setup({
				capabilities = capabilities,
			})
		end,
	},
}
