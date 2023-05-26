require("formatter").setup({
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    javascript = {
      require("formatter.filetypes.javascript").prettierd,
      require("formatter.filetypes.javascript").eslint_d,
    },
    javascriptreact = {
      require("formatter.filetypes.javascriptreact").prettierd,
      require("formatter.filetypes.javascriptreact").eslint_d,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettierd,
      require("formatter.filetypes.typescript").eslint_d,
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettierd,
      require("formatter.filetypes.typescriptreact").eslint_d,
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = "*",
  command = "FormatWriteLock",
})
