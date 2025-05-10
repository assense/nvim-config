return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "tabs",
				indicator = { style = "underline" },
				diagnostics = "nvim_lsp",
				show_buffer_close_icons = false,
				separator_style = "thick", -- "slant" | "slope" | "thick" | "thin" | { "any", "any" },
				hover = { enabled = false },
			},
		})
	end,
}
