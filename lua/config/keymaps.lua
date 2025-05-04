local map = vim.keymap.set
-- #########################################################################
-- _  _ ____ _   _ _  _ ____ ___  ____
-- |_/  |___  \_/  |\/| |__| |__] [__
-- | \_ |___   |   |  | |  | |    ___]
--
-- #########################################################################
map("i", "jj", "<esc>", defaults)

-- Avoid the annoying default behavior where pasting over text clobbers your clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Next greatest remap ever : asbjornHaland
-- In visual mode (v): copies the selected text to the system clipboard (+ register).
-- In normal mode (n): copies the text specified by a motion (e.g., <leader>yy, <leader>yw) to the system clipboard.
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- Yanks the entire current line to the system clipboard (+ register)
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- This sets up a keybinding for <leader>d in normal (n) and visual (v) modes that:
--  * Deletes text using the black hole register ("_)
--  * Avoids overwriting your yank/clipboard registers

-- Breakdown:
--  * "_d = delete using the black hole register, so the deleted text is not saved to ", +, or any other yank buffer.
--  * Normally, deleting something (with d, x, etc.) overwrites your default register — this keymap prevents that.
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
