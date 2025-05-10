-- Set clipboard options
vim.cmd('set clipboard+=unnamedplus')

-- Highlight yanked text for a brief moment
vim.cmd('au TextYankPost * lua vim.highlight.on_yank {on_visual = false}')

-- Better indenting
vim.cmd('filetype plugin indent on')
vim.cmd('set smartindent')
vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set expandtab')

-- Enable line numbers
vim.cmd('set number')
vim.cmd('set relativenumber')


-- Highlight search results as you type
vim.cmd('set incsearch')
vim.cmd('set hlsearch')

-- Display matching brackets/parentheses
vim.cmd('set showmatch')
-- Enable mouse support
vim.cmd('set mouse=a')

-- Display ruler with line and column numbers
vim.cmd('set ruler')

-- Syntax highlighting
vim.cmd('syntax enable')

-- Enable line wrapping
vim.cmd('set wrap')

-- Save undo history
vim.cmd('set undofile')

-- Save and load session
vim.cmd('set sessionoptions+=globals')
vim.cmd('set updatecount=1000')

-- Enable auto-indentation for certain file types
vim.cmd('autocmd FileType python setlocal ai ts=4 sw=4 et')

-- True terminal colors setting
vim.o.termguicolors = true
