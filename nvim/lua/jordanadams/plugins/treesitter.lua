require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  },
  autotag = {
    enable = true
  },
  ensure_installed = { "javascript", "lua", "tsx", "typescript", "css", "html", "json" }
}

-- Improved code folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false
