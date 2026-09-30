return {
  dir = "~/fortydeea_dev/base16-40deea.nvim",
  name = "base16-40deea",
  dependencies = { "RRethy/base16-nvim" },
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("base16-40deea")
  end,
}
