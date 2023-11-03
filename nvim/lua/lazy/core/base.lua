-- O comando a seguir é redundante se for executado no início do script, já que ainda não haverá autocomandos definidos.
-- vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"

local keymap = vim.opt

-- Definições de configuração usando keymap (vim.opt)
keymap.encoding = "utf-8"
keymap.fileencoding = "utf-8"
keymap.number = true
keymap.title = true
keymap.smartindent = true
keymap.autoindent = true
keymap.backup = false
keymap.backupskip = { "/tmp/*", "/private/tmp/*" }
keymap.showcmd = true
keymap.cmdheight = 1
keymap.laststatus = 2
keymap.expandtab = true
keymap.scrolloff = 10
keymap.inccommand = "split"
keymap.ignorecase = true
keymap.smarttab = true
keymap.breakindent = true
keymap.shiftwidth = 2
keymap.tabstop = 2
keymap.wrap = false
keymap.cursorline = true
keymap.winblend = 0
keymap.wildoptions = "pum"
keymap.pumblend = 5
keymap.background = "dark"
keymap.backspace = { "start", "eol", "indent" }
keymap.path:append({ "**" })
keymap.wildignore:append({ "*/node_modules/*" })
-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd([[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]])
-- Configuração do sublinhado
vim.cmd([[let &t_Cs = "\e[4:3m"]]) -- Define o início do sublinhado
vim.cmd([[let &t_Ce = "\e[4:0m"]]) -- Define o fim do sublinhado
-- Desativa o modo de colar ao sair do modo de inserção
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "set nopaste",
})
keymap.formatoptions:append({ "r" })

-- Configurações adicionais sem redundâncias
keymap.guicursor = ""
keymap.nu = true
keymap.relativenumber = true
keymap.softtabstop = 4
keymap.swapfile = false
keymap.undodir = os.getenv("HOME") .. "/.vim/undodir"
keymap.undofile = true
keymap.hlsearch = false
keymap.incsearch = true
keymap.termguicolors = true
keymap.signcolumn = "yes"
keymap.isfname:append("@-@")
keymap.updatetime = 50
keymap.clipboard:append({ "unnamedplus" })
