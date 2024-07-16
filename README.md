# nvim-config
Personal neovim config files (written in lua)
### ⚙️ Core plugins
* Plugin manager - Lazy
* Theme - Nightfox (carbonfox)
* LSP integration - lspconfig + Mason
* Autocompletion - nvimcmp
* Navigation - mini.files, Harpoon, telescope
* UI - tabby, lualine, noice

### 📂 File Structure
<pre>
~/.config/nvim
├── lua/
│   └── nvim/ 
│       ├── core/
│       │   ├── colorscheme.lua
│       │   ├── keymaps.lua
│       │   └── options.lua
│       ├── plugins
│       │   ├── plugin group 1/
│       │   │   ├── plugin1.lua
│       │   │   ├── ***
│       │   │   └── plugin5.lua
│       │   ├── ***
│       │   └── plugin group 4/
│       └── lazy.lua
│
└── init.lua
</pre>
### Screenshots
---

Enjoy!
