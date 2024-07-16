return {
    'ahmedkhalf/project.nvim',
    dependencies = {
        'nvim-telescope/telescope.nvim'
    },
    config = function()
        require("project_nvim").setup({
            patterns = { ".git", "_darcs", ".hg",
                ".bzr", ".svn", "Makefile",
                "package.json", 'Cargo.toml',
                'Cargo.lock', "=venv" },

        })
    end,
}
