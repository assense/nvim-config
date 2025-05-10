return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			python = { "ruff" },
			c = { "cpplint" },
			cpp = { "cpplint" },
			lua = { "luacheck" },
		}
		local lint_autogroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_autogroup,
			callback = function()
				lint.try_lint()
			end,
		})
		local luacheck = require("lint").linters.luacheck
		luacheck.args = {
			"--globals=vim",
		}
	end,
}
