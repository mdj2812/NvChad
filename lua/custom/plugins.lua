local plugins = {
  {
    "RRethy/vim-illuminate",
    event = "BufEnter",
    config = function ()
      return require "custom.configs.vim-illuminate"
    end,
  },
  {
    "natecraddock/sessions.nvim",
    lazy = false,
    config = function ()
      require "custom.configs.sessions"
    end,
  },
  {
    "natecraddock/workspaces.nvim",
    lazy = false,
    config = function ()
      require "custom.configs.workspaces"
    end,
  },
  {
    "APZelos/blamer.nvim",
    lazy = false,
    config = function()
      vim.g.blamer_enabled = 1
      vim.g.blamer_delay = 500
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
      }
    }
  },
  {
    "sindrets/diffview.nvim",
    event = "VeryLazy",
    config = function ()
      require "custom.configs.diffviewconfig"
    end
  },
  {
    "tpope/vim-surround",
    event = "VeryLazy",
  },
  {
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = { "Outline", "OutlineOpen" },
    keys = { -- Example mapping to toggle outline
      { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
    opts = {
      -- Your setup opts here
    },
  }
}
return plugins
