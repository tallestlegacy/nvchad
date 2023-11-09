local M = {
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    go = {
      function()
        return { exe = "goimports", args = { "-w" } }
      end,
      function()
        return { exe = "golines", args = { "-w" } }
      end,
      function()
        return { exe = "gofumpt", args = { "-w" } }
      end,
    },

    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier,
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
}

-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  --  command = "FormatWriteLock"
-- })

return M