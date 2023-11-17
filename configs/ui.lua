if vim.g.neovide then
  vim.g.neovide_scale_factor = 0.7
end

require("nvterm").setup {
  terminals = {
    type_opts = {
      float = {
        relative = "editor",
        width = 0.9,
        height = 0.75,
      },
    },
  },
}
