local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Plugin directory
local function get_plugin_dirs()
	local plugin_dirs = {}
	for _, dir in ipairs(vim.fn.glob("~/.config/nvim/lua/plugins/*/", true, true)) do
		local dirname = dir:match("([^/]+)/$")
		if dirname then
			table.insert(plugin_dirs, { import = "plugins." .. dirname })
		end
	end
	return plugin_dirs
end

-- Plugin setup
require("lazy").setup(get_plugin_dirs(), {
	checker = {
		enabled = true,
		notify = true,
	},
})
