return {
  'carlos-algms/agentic.nvim',

  --- @type agentic.PartialUserConfig
  opts = {
    provider = 'goose-codex',
    diff_preview = {
      layout = 'inline',
    },
    windows = {
      width = 40,
    },
    acp_providers = {
      ['goose-codex'] = {
        name = 'Goose with Chatgpt Plus Subscription',
        command = 'goose',
        args = { 'acp' },
        env = {
          GOOSE_PROVIDER = 'chatgpt_codex',
          GOOSE_MODEL = 'gpt-6.2-sol',
          GOOSE_THINKING_EFFORT = 'low',
        },
      },
      ['goose-zai'] = {
        name = 'Goose with z.ai Lite Subscription',
        command = 'goose',
        args = { 'acp' },
        env = {
          GOOSE_PROVIDER = 'zai_coding_plan',
          GOOSE_MODEL = 'glm-5.4',
          GOOSE_THINKING_EFFORT = 'low',
        },
      },
      ['claude'] = {
        name = 'Claude Code',
        command = 'claude-agent-acp',
        env = {
          ANTHROPIC_MODEL = 'claude-opus-5-5',
          CLAUDE_CODE_EFFORT_LEVEL = 'low',
        },
      },
      ['goose-openai-api'] = {
        name = 'Goose with default OpenAI API',
        command = 'goose',
        args = { 'acp' },
        env = {
          GOOSE_PROVIDER = 'openai',
          GOOSE_MODEL = 'gpt-6.2-sol',
          GOOSE_THINKING_EFFORT = 'low',
        }
      },
    },
    keymaps = {
      widget = {
        switch_provider = '<leader>p',
      },
    },
  },
  keys = {
    { '<leader>a', nil, desc = 'AI/agentic' },
    {
      '<leader>aC',
      function() require('agentic').toggle() end,
      mode = { 'n', 'v' },
      desc = 'Toggle Agentic Chat'
    },
    {
      '<leader>ac',
      function() require('agentic').toggle({ auto_add_to_context = false }) end,
      mode = { 'n', 'v' },
      desc = 'Toggle Agentic Chat without context'
    },
    {
      '<leader>aT',
      function()
        vim.cmd('tabnew')
        local win = vim.api.nvim_get_current_win()
        vim.bo.bufhidden = 'wipe' -- buffer is deleted once its window closes
        require('agentic').open({ auto_add_to_context = false })
        vim.schedule(function()
          if vim.api.nvim_win_is_valid(win) then
            vim.api.nvim_win_close(win, false)
          end
        end)
      end,
      mode = { 'n', 'v' },
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
      mode = { 'n', 'v' },
      desc = 'New Agentic Session'
    },
    {
      '<leader>ar', -- ai Restore
      function()
          require('agentic').restore_session()
      end,
      desc = 'Agentic Restore session',
      silent = true,
      mode = { 'n', 'v' },
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
