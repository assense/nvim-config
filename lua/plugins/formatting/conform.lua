return {
	"stevearc/conform.nvim",
	event = { "BufWritePre", "BufNewFile" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>fm",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	-- Everything in opts will be passed to setup()
	opts = {
		-- Define your formatters
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			rust = { "rustfmt" },
			-- c = { "clang-format" },
			-- cpp = { "clang-format" },
		},

		-- Set up format-on-save
		format_after_save = { timeout_ms = 750, lsp_fallback = true, async = true },
		-- Customize formatters
		formatters = {
			black = {
				prepend_args = {
					"--line-length",
					"120",
					"--exclude",
					".*/generated/.*|.*/venv/.*|.*/\\.venv/.*",
					"-", -- Format stdin
				},
			},
			isort = {
				prepend_args = {
					"--line-length",
					"120",
					"--cs",
					"--ca",
					"--dont-order-by-type",
					"--force-grid-wrap=3",
					"--multi-line=3",
					"--tc",
					"--use-parentheses",
					"--skip-glob",
					"*/generated/*",
				},
			},
		},
	},
}
