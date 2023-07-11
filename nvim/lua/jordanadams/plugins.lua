local utils = require("jordanadams.utils")

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  -- Neovim Lua Utils
  use("nvim-lua/plenary.nvim")
  use("nvim-tree/nvim-web-devicons")

  -- Tree Explorer
  use({ "nvim-tree/nvim-tree.lua" })

  -- Fuzzy Finder
  use({ "nvim-telescope/telescope.nvim", tag = "0.1.0", requires = { "benfowler/telescope-luasnip.nvim" } })

  -- Status Line
  use({
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup()
    end,
  })

  -- Colour Scheme
  use({
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      require("rose-pine").setup({
        dark_variant = "moon",
        disable_italics = true,
      })
      vim.cmd("colorscheme rose-pine")
    end,
  })

  -- Syntax Hightlighting
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use({ "nvim-treesitter/playground" })

  -- Snippets
  use({
    "L3MON4D3/LuaSnip",
    tag = "v1.*",
  })

  -- Editing
  use({
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  })
  use({ "tpope/vim-surround" })
  use({ "tpope/vim-abolish" })
  use({ "AndrewRadev/splitjoin.vim" })
  use({
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  })

  -- Formatting
  require("packer").use({
    "mhartington/formatter.nvim",
    config = function()
      require("jordanadams.plugins.formatter")
    end,
  })

  -- Completion
  use({
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
    },
  })

  -- Language Server
  use({
    "junnplus/lsp-setup.nvim",
    requires = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
  })
  use({ "glepnir/lspsaga.nvim", branch = "main" })

  -- Tmux Navigation Integration
  use({ "christoomey/vim-tmux-navigator" })

  -- Git Integration
  use({
    "ruifm/gitlinker.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("gitlinker").setup()
    end,
  })
  use "airblade/vim-gitgutter"

  -- Other Helpers
  use({
    "mattkubej/jest.nvim",
    config = function()
      require("nvim-jest").setup()
    end,
  })

  if packer_bootstrap then
    utils.load("packer").sync()
  end
end)
