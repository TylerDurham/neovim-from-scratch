-- #########################################################################
-- ____ ____ ___ ___  ___  _  _ ____ ____ _ _  _
-- |    |__|  |  |__] |__] |  | |    |    | |\ |
-- |___ |  |  |  |    |    |__| |___ |___ | | \|
--
-- #########################################################################
-- More configuration options at: https://github.com/catppuccin/nvim

return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {},
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
		})

		vim.cmd([[colorscheme catppuccin-mocha]])
	end,
}
