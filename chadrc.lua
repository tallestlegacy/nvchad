---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "onedark",
  transparency = false,
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
  cmp = {
    style = "flat_light",
    icons = true,
    lspkind_text = true,
  },
  telescope = {
    style = "bordered",
  },
  tabufline = {
    show_numbers = true,
    lazyload = true,
  },
  lsp = {
    signature = {
      silent = false,
    },
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
-- require "custom.configs.ui"

return M
