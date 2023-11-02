local keymap = vim.opt

keymap.guicursor = ""

keymap.nu = true
keymap.relativenumber = true

keymap.tabstop = 4
keymap.softtabstop = 4
keymap.shiftwidth = 4
keymap.expandtab = true

keymap.smartindent = true

keymap.wrap = false

keymap.swapfile = false
keymap.backup = false
keymap.undodir = os.getenv("HOME") .. "/.vim/undodir"
keymap.undofile = true

keymap.hlsearch = false
keymap.incsearch = true

keymap.termguicolors = true

keymap.scrolloff = 8
keymap.signcolumn = "yes"
keymap.isfname:append("@-@")

keymap.updatetime = 50

-- keymap.colorcolumn = "80"

keymap.clipboard:append({ "unnamedplus" })
