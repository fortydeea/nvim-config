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
      '<leader>aC',
      function() require('agentic').toggle() end,
      mode = { 'n', 'v', 'i' },
      desc = 'Toggle Agentic Chat'
    },
    {
      '<leader>ac',
      function() require('agentic').toggle({ auto_add_to_context = false }) end,
      mode = { 'n', 'v', 'i' },
      desc = 'Toggle Agentic Chat without context'
    },
    {
      '<leader>aT',
      function()
        vim.cmd('tabnew')
        local win = vim.api.nvim_get_current_win()
        vim.bo.bufhidden = "wipe" -- buffer is deleted once its window closes
        require("agentic").open({ auto_add_to_context = false })
        vim.schedule(function()
          if vim.api.nvim_win_is_valid(win) then
            vim.api.nvim_win_close(win, false)
          end
        end)
      end,
      mode = { 'n', 'v', 'i' },
      desc = 'Toggle Agentic Chat in a new tab'
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
