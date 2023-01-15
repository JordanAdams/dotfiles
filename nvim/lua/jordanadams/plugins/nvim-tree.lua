vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    mappings = {
      list = {
        { key = { '<Tab>' }, action = 'close' },
      }
    }
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
})

vim.keymap.set('n', '<Tab>', require('nvim-tree.api').tree.toggle, {})
