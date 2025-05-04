-- #########################################################################
-- _  _ _  _ _ _  _    ___ ____ ____ ____
-- |\ | |  | | |\/| __  |  |__/ |___ |___
-- | \|  \/  | |  |     |  |  \ |___ |___
--
-- #########################################################################
-- More configuration options at: https://github.com/nvim-tree/nvim-tree.lua

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				width = 35,
				relativenumber = true,
			},
			-- change folder arrow icons
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "", -- arrow when folder is closed
							arrow_open = "", -- arrow when folder is open
						},
					},
				},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set(
			"n",
			"<leader>te",
			"<cmd>NvimTreeToggle<CR>",
			{ desc = "[T]oggle Tree [E]xplorer. Show/hide the file explorer." }
		) -- toggle file explorer
		keymap.set(
			"n",
			"<leader>e-",
			"<cmd>NvimTreeCollapse<CR>",
			{ desc = "Tree [e]xplorer collapse. Collapse the file explorer." }
		) -- collapse file explorer
		keymap.set(
			"n",
			"<leader>ef",
			"<cmd>NvimTreeFindFileToggle<CR>",
			{ desc = "Tree focus. Return focus to the file explorer." }
		) -- toggle file explorer on current file
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Tree refresh. Refresh the file explorer." }) -- refresh file explorer
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeClose<CR>", { desc = "Tree closeh. Close the file explorer." }) -- refresh file explorer
	end,
}
