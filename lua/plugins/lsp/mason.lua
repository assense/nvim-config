return {
	"williamboman/mason.nvim",
	priority = 100,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		mason_lspconfig.setup({
			ensure_installed = {},
			automatic_installation = true,
			handlers = {
				-- Default handler
				function(server_name)
					local lspconfig = require("lspconfig")
					local cmp_nvim_lsp = require("cmp_nvim_lsp")
					local capabilities = cmp_nvim_lsp.default_capabilities()

					if server_name == "ruff" then
						return
					end

					lspconfig[server_name].setup({
						capabilities = capabilities,
					})
				end,

				-- Specific handler for lua_ls
				["lua_ls"] = function()
					local lspconfig = require("lspconfig")
					local cmp_nvim_lsp = require("cmp_nvim_lsp")
					local capabilities = cmp_nvim_lsp.default_capabilities()

					lspconfig["lua_ls"].setup({
						capabilities = capabilities,
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim" },
								},
								completion = {
									callSnippet = "Replace",
								},
							},
						},
					})
				end,
			},
		})
		mason_tool_installer.setup({
			ensure_installed = {},
		})
	end,
}
