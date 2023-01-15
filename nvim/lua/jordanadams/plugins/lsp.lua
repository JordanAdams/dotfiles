---------------
-- LSP SETUP
---------------
require('lsp-setup').setup({
  default_mappings = false,
  mappings = {},
  on_attach = function(client, bufnr)
    require('lsp-setup.utils').format_on_save(client)
  end,
  capabilities = vim.lsp.protocol.make_client_capabilities(),
  servers = {
    pylsp = {},
    tsserver = {},
    rust_analyzer = {},
    sumneko_lua = {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    }
  }
})

---------------
-- LSP SAGA
---------------
local saga = require('lspsaga')

saga.init_lsp_saga()

-- LSP Finder
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })

-- Code action
vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })

-- Rename
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })

-- Peek Definition
vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })

-- Hover Doc
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

-- Show Diagnostics
vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

-- Diagnostic jump can use `<c-o>` to jump back
vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })

--[[ Only jump to error
  vim.keymap.set("n", "[E", function()
    require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
  end, { silent = true })
  vim.keymap.set("n", "]E", function()
    require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
  end, { silent = true }) ]]

--[[ Outline
  vim.keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", { silent = true }) ]]
