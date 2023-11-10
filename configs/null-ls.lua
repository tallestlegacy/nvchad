local null_ls = require "null-ls"

local augroup = vim.api.nvim_create_augroup("LSP formatting", {})

local opts = {
  sources = {
    -- FORMATTING
    -- lua
    null_ls.builtins.formatting.stylua,
    -- go
    null_ls.builtins.formatting.goimports_reviser,
    null_ls.builtins.formatting.golines,
    null_ls.builtins.formatting.gofumpt,
    --rust
    null_ls.builtins.formatting.rustfmt,
    -- js
    null_ls.builtins.formatting.prettier,

    -- LINTING
    -- go
    null_ls.builtins.diagnostics.gopls,
    -- rust
    null_ls.builtins.diagnostics.rust_analyzer,
    -- js
    null_ls.builtins.diagnostics.eslint,
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}

return opts
