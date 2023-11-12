-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	config = function()
-- 		vim.cmd("colorscheme rose-pine")
-- 	end,
-- }

-- return {
-- 	"svrana/neosolarized.nvim",
-- 	name = "neosolarized",
-- 	dependencies = { "tjdevries/colorbuddy.nvim" },
-- 	config = function()
-- 		local n = require("neosolarized")
--
-- 		n.setup({
-- 			comment_italics = true,
-- 		})
--
-- 		local cb = require("colorbuddy.init")
-- 		local Color = cb.Color
-- 		local colors = cb.colors
-- 		local Group = cb.Group
-- 		local groups = cb.groups
-- 		local styles = cb.styles
--
-- 		Color.new("white", "#ffffff")
-- 		Color.new("black", "#000000")
-- 		Group.new("Normal", colors.base1, colors.NONE, styles.NONE)
-- 		Group.new("CursorLine", colors.none, colors.base03, styles.NONE, colors.base1)
-- 		Group.new("CursorLineNr", colors.yellow, colors.black, styles.NONE, colors.base1)
-- 		Group.new("Visual", colors.none, colors.base03, styles.reverse)
-- 		Group.new("NormalFloat", colors.base1, colors.NONE, styles.NONE)
--
-- 		local cError = groups.Error.fg
-- 		local cInfo = groups.Information.fg
-- 		local cWarn = groups.Warning.fg
-- 		local cHint = groups.Hint.fg
--
-- 		Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
-- 		Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
-- 		Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
-- 		Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
-- 		Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
-- 		Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
-- 		Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
-- 		Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)
--
-- 		Group.new("HoverBorder", colors.yellow, colors.none, styles.NONE)
-- 		vim.cmd("colorscheme neosolarized")
-- 		print("neosolarized")
-- 	end,
-- }

--[[ return {
	"craftzdog/solarized-osaka.nvim",
	lazy = false,
	config = function()
		local osaka = require("solarized-osaka")
		osaka._load("night")
		osaka.setup({
			transparent = true,
		})
	end,
} ]]

return
{
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = {   -- :h background
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false, -- disables setting the background color.
      show_end_of_buffer = false,   -- shows the '~' characters after the end of buffers
      term_colors = false,          -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false,            -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15,          -- percentage of the shade to apply to the inactive window
      },
      no_italic = false,            -- Force no italic
      no_bold = false,              -- Force no bold
      no_underline = false,         -- Force no underline
      styles = {                    -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" },    -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {},
      custom_highlights = {},
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    })

    -- setup must be called before loading
    vim.cmd.colorscheme "catppuccin"
  end
}
