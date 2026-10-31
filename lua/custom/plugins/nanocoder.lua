return {
  'fortydeea/nanocoder.nvim',
  cmd = {
    'Nanocoder', 'NanocoderFocus', 'NanocoderSelectModel', 'NanocoderAdd',
    'NanocoderSend', 'NanocoderSendText', 'NanocoderTreeAdd', 'NanocoderStatus',
    'NanocoderStart', 'NanocoderStop', 'NanocoderOpen', 'NanocoderClose',
    'NanocoderContinue', 'NanocoderResume', 'NanocoderRestart',
    'NanocoderDiffAccept', 'NanocoderDiffDeny', 'NanocoderCloseAllDiffs',
  },
  keys = {
    { '<leader>n', nil, desc = 'AI/nanocoder' },
    { '<leader>nc', '<cmd>Nanocoder<CR>', desc = 'Toggle nanocoder' },
    { '<leader>nf', '<cmd>NanocoderFocus<CR>', desc = 'Focus nanocoder' },
    { '<leader>nm', '<cmd>NanocoderSelectModel<CR>', desc = 'Select model' },
    { '<leader>nb', '<cmd>NanocoderAdd %<CR>', desc = 'Add current buffer' },
    { '<leader>ns', '<cmd>NanocoderSend<CR>', mode = 'v', desc = 'Send to nanocoder' },
    { '<leader>na', '<cmd>NanocoderDiffAccept<CR>', desc = 'Accept diff' },
    { '<leader>nd', '<cmd>NanocoderDiffDeny<CR>', desc = 'Deny diff' },
  },
  opts = {},
}
