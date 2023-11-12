local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua
        "stylua",
        "lua-language-server",
        -- go
        "gopls",
        "gofumpt",
        "goimports-reviser",
        "golines",
        "gopher",
        -- web
        "eslint-lsp",
        "eslint_d",
        "typescript-language-server",
        "prettier",
        "vue-language-server",
        "svelte-language-server",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "go",
        "rust",
        "html",
        "css",
        "scss",
        "javascript",
        "typescript",
        "vue",
        "svelte",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  -- replacement for jose-elias-alvarez/null-ls.nvim
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    config = function()
      require "custom.configs.null-ls"
    end,
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  -- {
  --   "mfussenegger/nvim-lint",
  --   event = "VeryLazy",
  --   config = function()
  --     require "custom.configs.lint"
  --   end,
  -- },
  -- {
  --   "mhartington/formatter.nvim",
  --   event = "VeryLazy",
  --   opts = function()
  --     return require "custom.configs.formatter"
  --   end,
  -- },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.ccmd [[silent! GoInstallDeps]]
    end,
  },
}

return plugins
