return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")

		auto_session.setup({
			auto_restore_enabled = false,
			session_lens = {
				load_on_setup = true,
				theme_conf = { border = true },
			},
		})

		local keymap = vim.keymap

		keymap.set("n", "<Space>sr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
		keymap.set("n", "<Space>ss", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
		keymap.set("n", "<Space>sl", require("auto-session.session-lens").search_session, {
			noremap = true,
			desc = "List all available sessions",
		})
	end,
}
