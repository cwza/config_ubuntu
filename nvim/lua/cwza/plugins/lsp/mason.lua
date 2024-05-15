return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		-- lsp
		mason_lspconfig.setup({
			ensure_installed = {
				-- "lua_ls",
				-- "rust_analyzer",
			},
			automatic_installation = true, -- not the same as ensure_installed
		})
		-- linter and formatter
		mason_tool_installer.setup({
			ensure_installed = {
				-- "stylua",
			},
		})
	end,
}
