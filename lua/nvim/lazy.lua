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
    local handle = io.popen('ls -d ~/.config/nvim/lua/nvim/plugins/*/ 2>/dev/null')
    if handle then
        for dir in handle:lines() do
            local dirname = dir:match("([^/]+)/$")
            if dirname then
                table.insert(plugin_dirs, { import = "nvim.plugins." .. dirname })
            end
        end
        handle:close()
    end
    return plugin_dirs
end

require("lazy").setup(get_plugin_dirs(),
    {
        install = {
            colorscheme = { "oxocarbon" },
        },

        checker = {
            enabled = true,
            notify = true,
        },
    }
)
