return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"ahmedkhalf/project.nvim",
	},
	name = "telescope",
	config = function()
		require("telescope").setup({
			defaults = {
				layout_strategy = "horizontal",
				layout_config = {
					height = 0.95,
					horizontal = {
						prompt_position = "top",
					},
				},
				theme = "dropdown",
				mappings = {
					i = {},
				},
				hidden = true,
				file_sorter = require("telescope.sorters").get_fzy_sorter,
				generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
				path_display = { "truncate" },
			},
			pickers = {
				find_files = {
					theme = "dropdown",
					hidden = true,
					layout_strategy = "horizontal",
					layout_config = {
						height = 0.95,
						width = 0.95,
					},
				},
			},
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				},
				projects = {},
				aerial = {},
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
		})
		require("telescope").load_extension("fzf")
		require("telescope").load_extension("ui-select")
		require("telescope").load_extension("projects")
	end,
}
