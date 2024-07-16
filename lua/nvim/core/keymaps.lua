-- Key mappings
--
-- Default NVIM mappings
-- Adding a W support (to write file)
vim.api.nvim_create_user_command('W', 'write', {})
-- Visual block mode mapping
vim.api.nvim_set_keymap('x', '<Space>v', ':<C-u>normal! gv<CR>', { noremap = true, silent = true })

--ToggleTerm mappings
vim.api.nvim_set_keymap('n', '<Leader>t', ':ToggleTerm<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

--NvimTree mappings
vim.api.nvim_set_keymap('n', '<Leader>ef', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>et', ':NvimTreeToggle<CR>:NvimTreeFindFile<CR>', { noremap = true, silent = true })

-- mini.files mappings
vim.api.nvim_set_keymap('n', '<Leader>ee', ':lua MiniFiles.open()<CR>',
    { noremap = true, silent = true, desc = 'Open mini.files explorer' })


--Conform formatter mapping
--
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        require("conform").format({ bufnr = args.buf })
    end,
})

--Telescope mappings
vim.api.nvim_set_keymap('n', '<Space>f', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true, silent = true })

--Autosession mappings
vim.api.nvim_set_keymap('n', '<Leader>sd', '<cmd>Autosession delete<CR>', { noremap = true, silent = true })

-- Use control as the leader-like key for window navigation
vim.api.nvim_set_keymap('n', '<c-h>', '<C-W>h', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<c-j>', '<C-W>j', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<c-k>', '<C-W>k', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<c-l>', '<C-W>l', { noremap = true, silent = true })
