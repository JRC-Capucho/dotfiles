return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	opts = {}, -- this is equalent to setup({}) function
	config = function()
		local autopairs = require("nvim-autopairs")

		autopairs.setup({
			disable_filetype = { "TelescopePrompt", "vim" },
		})
	end,
}
