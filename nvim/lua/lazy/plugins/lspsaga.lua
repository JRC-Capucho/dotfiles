return {
  "nvimdev/lspsaga.nvim",
  dependencies = {
    { "nvim-treesitter/nvim-treesitter" }, -- optional
    { "nvim-tree/nvim-web-devicons" },     -- optional
  },
  config = function()
    local saga = require("lspsaga")
    -- local diagnostic = require("lsp.diagnostic")

    saga.setup({
      ui = {
        kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
        border = "rounded",
      },
      symbol_in_winbar = {
        enable = false,
      },
      lightbulb = {
        enable = false,
      },
      outline = {
        layout = "float",
      },
    })
    local opts = { noremap = true, silent = true }

    vim.keymap.set("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
    vim.keymap.set("n", "gl", "<Cmd>Lspsaga show_line_diagnostics<CR>", opts)
    vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
    vim.keymap.set("n", "gd", "<Cmd>Lspsaga finder<CR>", opts)
    vim.keymap.set("n", "gt", "<Cmd>Lspsaga goto_type_definition<CR>", opts)
    -- vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
    vim.keymap.set("i", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    vim.keymap.set("n", "gp", "<Cmd>Lspsaga peek_definition<CR>", opts)
    vim.keymap.set("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)

    -- code action
    vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")
  end,
}
