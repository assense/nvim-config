return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },

	config = function()
		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				})
				:find()
		end
		require("harpoon").setup({})
		local harpoon = require("harpoon")
		vim.keymap.set("n", "<Space>er", function()
			toggle_telescope(harpoon:list())
		end, { desc = "Open harpoon window" })
		vim.keymap.set("n", "<Space>a", function()
			harpoon:list():add()
		end, { desc = "" })
		vim.keymap.set("n", "<Space>k", function()
			harpoon:list():next()
		end, { desc = "Switch to next attached buffer" })
		vim.keymap.set("n", "<Space>j", function()
			harpoon:list():prev()
		end, { desc = "Switch to prev attached buffer" })
	end,
}
