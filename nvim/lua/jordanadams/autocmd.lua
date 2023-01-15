vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.tsx", "*.jsx" },
  callback = function()
    vim.bo.filetype = "typescriptreact"
  end
})
