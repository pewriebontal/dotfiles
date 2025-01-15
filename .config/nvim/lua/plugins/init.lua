return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "clangd" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    lazy = false,
    event = { "InsertEnter" },
    config = function()
      require("configs.copilotconfig").setup()
    end,
  },
  { "nvzone/volt",
    lazy = true,
  },
  { "nvzone/menu",
    lazy = true,
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
}
