-- Key mappings
--
-- Default NVIM mappings
-- Adding capital letters alias
vim.api.nvim_create_user_command("W", "write", {})
vim.api.nvim_create_user_command("Q", "quit!", {})
vim.api.nvim_create_user_command("Wq", "wq", {})
vim.api.nvim_create_user_command("WQ", "wq", {})

-- Center the cursor after control - u/d
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- mini.files mappings
vim.api.nvim_set_keymap(
	"n",
	"<Space>ee",
	":lua MiniFiles.open()<CR>",
	{ noremap = true, silent = true, desc = "Open mini.files explorer" }
)

--Telescope mappings
vim.api.nvim_set_keymap("n", "<Space>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Space>fg", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Space>fb", "<cmd>Telescope buffers<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Space>fh", "<cmd>Telescope help_tags<CR>", { noremap = true, silent = true })

--Autosession mappings
vim.api.nvim_set_keymap("n", "<Space>sd", "<cmd>Autosession delete<CR>", { noremap = true, silent = true })

-- Use control as the leader-like key for window navigation
vim.api.nvim_set_keymap("n", "<c-h>", "<C-W>h", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<c-j>", "<C-W>j", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<c-k>", "<C-W>k", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<c-l>", "<C-W>l", { noremap = true, silent = true })

-- Remove yanking copy text to register
vim.keymap.set("x", "p", '"_dP', { noremap = true })
