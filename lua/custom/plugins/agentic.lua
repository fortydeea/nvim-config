return {
  'carlos-algms/agentic.nvim',

  --- @type agentic.PartialUserConfig
  opts = {
    provider = 'goose-acp',
    diff_preview = {
      layout = "inline",
    },
    windows = {
      width = 40,
    },
    acp_providers = {
      ['goose-acp'] = {
        command = 'goose',
        args = { 'acp' },
      },
      ['goose-low'] = {
        command = 'goose',
        args = { 'acp' },
        env = { GOOSE_THINKING_EFFORT = 'low' },
      }
    }
  },
  keys = {
    { '<leader>a', nil, desc = 'AI/agentic' },
    {
      '<leader>ac',
      function() require('agentic').toggle() end,
      mode = { 'n', 'v', 'i' },
      desc = 'Toggle Agentic Chat'
    },
    {
      '<leader>as',
      function() require('agentic').add_selection_or_file_to_context() end,
      mode = { 'n', 'v' },
      desc = 'Add file or selection to Agentic to Context'
    },
    {
      '<leader>an',
      function() require('agentic').new_session() end,
      mode = { 'n', 'v', 'i' },
      desc = 'New Agentic Session'
    },
    {
      '<leader>ar', -- ai Restore
      function()
          require('agentic').restore_session()
      end,
      desc = 'Agentic Restore session',
      silent = true,
      mode = { 'n', 'v', 'i' },
    },
    {
      '<leader>ad', -- ai Diagnostics
      function()
          require('agentic').add_current_line_diagnostics()
      end,
      desc = 'Add current line diagnostic to Agentic',
      mode = { 'n' },
    },
    {
      '<leader>aD', -- ai all Diagnostics
      function()
          require('agentic').add_buffer_diagnostics()
      end,
      desc = 'Add all buffer diagnostics to Agentic',
      mode = { 'n' },
    },
  },
}
