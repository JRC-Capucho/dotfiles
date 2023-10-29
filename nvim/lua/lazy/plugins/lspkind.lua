return {
	"onsails/lspkind.nvim",
	config = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")

		lspkind.init({
			-- enables text annotations
			--
			-- default: true
			mode = "symbol",

			-- default symbol map
			-- can be either 'default' (requires nerd-fonts font) or
			-- 'codicons' for codicon preset (requires vscode-codicons font)
			--
			-- default: 'default'
			preset = "codicons",

			-- override preset symbols
			--
			-- default: {}
			symbol_map = {
				Text = "󰉿",
				Method = "󰆧",
				Function = "󰊕",
				Constructor = "",
				Field = "󰜢",
				Variable = "",
				Class = "󰠱",
				Interface = "",
				Module = "",
				Property = "󰜢",
				Unit = "󰑭",
				Value = "󰎠",
				Enum = "",
				Keyword = "󰌋",
				Snippet = "",
				Color = "󰏘",
				File = "󰈙",
				Reference = "󰈇",
				Folder = "󰉋",
				EnumMember = "",
				Constant = "󰏿",
				Struct = "󰙅",
				Event = "",
				Operator = "󰆕",
				TypeParameter = "",
			},
		})

		cmp.setup({
			formatting = {
				format = function(entry, vim_item)
					vim_item.kind = lspkind.presets.default[vim_item.kind] .. " " .. vim_item.kind
					return vim_item
				end,
			},
		})
	end,
}
