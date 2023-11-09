local plugins = {
  {
    "willianboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua
        "stylua",
        -- go
        "gopls",
        "gofumpt",
        "goimports-reviser",
        "golines",
        "gopher",
        -- web
        "eslint-lsp",
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
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "custom.configs.lint"
    end,
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.formatter"
    end,
  },
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