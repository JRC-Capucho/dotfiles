local bufferline = require("bufferline")

vim.opt.termguicolors = true

bufferline.setup({
	options = {
		mode = "buffers",
		style_preset = bufferline.style_preset.minimal,
		themable = true,
		numbers = "ordinal",
		close_command = "bdelete! %d",
		right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
		left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
		middle_mouse_command = nil, -- can be a string | function, | false see "Mouse actions"
		indicator = {
			icon = "▎", -- this should be omitted if indicator style is not 'icon'
			style = "underline",
		},
		diagnostics = "nvim_lsp",
        
    diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or ""
        return " " .. icon .. count
    end,
		diagnostics_update_in_insert = false,
		buffer_close_icon = "󰅖",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",
		show_duplicate_prefix = true, -- whether to show duplicate buffer prefix
		color_icons = true,
		separator_style = "slope",
		{ "any", "any" },
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
	},
})

-- Tabs
vim.keymap.set("n", "<Tab>",":BufferLineCycleNext<CR>",{silent=true})
vim.keymap.set("n", "<S-Tab>",":BufferLineCyclePrev<CR>",{silent=true})
