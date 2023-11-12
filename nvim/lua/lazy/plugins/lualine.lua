return {
  "nvim-lualine/lualine.nvim",
  dependecies = { "nvim-tree/nvim-we-devicons" },
  opt = true,
  config = function()
    local lualine = require("lualine")
    -- local colors = require("solarized-osaka.colors").setup({ transform = true })
    -- local config = require("solarized-osaka.config").options
    --
    -- local solarized_osaka = {}
    --
    -- solarized_osaka.normal = {
    --   a = { bg = colors.blue, fg = colors.black },
    --   b = { bg = colors.fg_gutter, fg = colors.blue },
    --   c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
    -- }
    --
    -- solarized_osaka.insert = {
    --   a = { bg = colors.green, fg = colors.black },
    --   b = { bg = colors.fg_gutter, fg = colors.green },
    -- }
    --
    -- solarized_osaka.command = {
    --   a = { bg = colors.yellow, fg = colors.black },
    --   b = { bg = colors.fg_gutter, fg = colors.yellow },
    -- }
    --
    -- solarized_osaka.visual = {
    --   a = { bg = colors.magenta, fg = colors.black },
    --   b = { bg = colors.fg_gutter, fg = colors.magenta },
    -- }
    --
    -- solarized_osaka.replace = {
    --   a = { bg = colors.red, fg = colors.black },
    --   b = { bg = colors.fg_gutter, fg = colors.red },
    -- }
    --
    -- solarized_osaka.terminal = {
    --   a = { bg = colors.green1, fg = colors.black },
    --   b = { bg = colors.fg_gutter, fg = colors.green1 },
    -- }
    --
    -- solarized_osaka.inactive = {
    --   a = { bg = colors.bg_statusline, fg = colors.blue },
    --   b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
    --   c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
    -- }
    --
    -- if config.lualine_bold then
    --   for _, mode in pairs(solarized_osaka) do
    --     mode.a.gui = "bold"
    --   end
    -- end
    --
    -- lualine.setup({
    --   options = {
    --     icons_enabled = true,
    --     theme = "catppuccin",
    --     section_separators = { left = "", right = "" },
    --     component_separators = { left = "", right = "" },
    --     disabled_filetypes = {},
    --   },
    --   sections = {
    --     lualine_a = { "mode" },
    --     lualine_b = { "branch" },
    --     lualine_c = {
    --       {
    --         "filename",
    --         file_status = true, -- displays file status (readonly status, modified status)
    --         path = 0,     -- 0 = just filename, 1 = relative path, 2 = absolute path
    --       },
    --     },
    --     lualine_x = {
    --       {
    --         "diagnostics",
    --         sources = { "nvim_diagnostic" },
    --         symbols = { error = " ", warn = " ", info = " ", hint = " " },
    --       },
    --       "fileformat",
    --       "encoding",
    --       "filetype",
    --     },
    --     lualine_y = { "progress" },
    --     lualine_z = { "location" },
    --   },
    --   inactive_sections = {
    --     lualine_a = {},
    --     lualine_b = {},
    --     lualine_c = {
    --       {
    --         "filename",
    --         file_status = true, -- displays file status (readonly status, modified status)
    --         path = 1,     -- 0 = just filename, 1 = relative path, 2 = absolute path
    --       },
    --     },
    --     lualine_x = { "location" },
    --     lualine_y = {},
    --     lualine_z = {},
    --   },
    --   tabline = {},
    --   extensions = { "fugitive" },
    -- })
    --
    lualine.setup {
      options = {
        theme = "catppuccin"
        -- ... the rest of your lualine config
      }
    }
  end,
}
