return {
  'nvim-treesitter/nvim-treesitter-context',
  event = 'BufReadPost',
  keys = {
    {
      '[x',
      function() require('treesitter-context').go_to_context(vim.v.count1) end,
      mode = 'n',
      silent = true,
      desc = 'Jump to enclosing conte[x]t',
    },
  },
  opts = {
    max_lines = 5,
    multiline_threshold = 1,
    mode = 'cursor',
  },
}
