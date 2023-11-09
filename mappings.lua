local M = {}

-- custom mappings

M["! my custom shortcuts"] = {
  i = {
    ["<C-s>"] = { "<esc>:w<cr>" },
    ["<C-f>"] = { "<esc>:FormatWrite<cr>" },
  },
  n = {
    ["<C-f>"] = { "<esc>:FormatWrite<cr>" },
  },
}

return M
