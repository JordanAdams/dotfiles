-- Set leader to <Space>
vim.g.mapleader = ' '

-- Normal :: <esc> - Cancel Highlight
vim.keymap.set("n", "<esc>", "<cmd>nohl<cr>", { desc = "Cancel highlight" })

-- Normal :: Y - Yank to end of line
vim.keymap.set("n", "Y", "y$", { desc = "Yank To EOL" })

-- All :: Disable Arrow Keys
vim.keymap.set({ "n", "x", "i", "v", "t", "o" }, "<Up>", "<NOP>")
vim.keymap.set({ "n", "x", "i", "v", "t", "o" }, "<Down>", "<NOP>")
vim.keymap.set({ "n", "x", "i", "v", "t", "o" }, "<Left>", "<NOP>")
vim.keymap.set({ "n", "x", "i", "v", "t", "o" }, "<Right>", "<NOP>")

-- Quick splits
vim.keymap.set('n', '<leader>-', '<cmd>new<CR>')
vim.keymap.set('n', '<leader>\\', '<cmd>vnew<CR>')
