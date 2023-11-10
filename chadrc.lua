---@type ChadrcConfig
local M = {}

require "custom.configs.neovide"

M.ui = {
  theme = "onedark",
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
  cmp = {
    style = "flat_light",
  },
  telescope = {
    style = "borderless",
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

return M
