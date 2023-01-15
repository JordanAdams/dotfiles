local telescope = require("telescope")
local builtin = require('telescope.builtin')

telescope.load_extension('luasnip')

local theme = require('telescope.themes').get_dropdown({
  border = true,
  layout_strategy = "horizontal",
  preview_title = false,
  prompt_prefix = '   ',
  layout_config = {
    prompt_position = "top",
    preview_cutoff = 30
  }
})

telescope.setup({
  pickers = {
    find_files = theme,
    live_grep = theme,
    buffers = theme,
    file_browser = theme
  },
})

local TelescopePrompt = {
  TelescopePromptTitle = {
    link = '@function.builtin'
  },
  TelescopePromptPrefix = {
    link = '@function'
  }
}

for hl, col in pairs(TelescopePrompt) do
  vim.api.nvim_set_hl(0, hl, col)
end

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.live_grep, {})
vim.keymap.set('n', '<leader><Space>', builtin.buffers, {})
