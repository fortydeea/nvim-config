return {
  "github/copilot.vim",
  cmd = "Copilot",
  lazy = false,
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    -- <M-]> for next suggestion, <M-[> for previous suggestion, <C-]> for dismissing a suggestion
    vim.g.copilot_assume_mapped = true
    vim.g.copilot_filetypes = {
      ["*"] = true,
      ["markdown"] = false,
    }
  end,
}
