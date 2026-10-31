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
    { '<leader>a', nil, desc = 'AI/nanocoder' },
    { '<leader>ac', '<cmd>Nanocoder<CR>', desc = 'Toggle nanocoder' },
    { '<leader>af', '<cmd>NanocoderFocus<CR>', desc = 'Focus nanocoder' },
    { '<leader>am', '<cmd>NanocoderSelectModel<CR>', desc = 'Select model' },
    { '<leader>ab', '<cmd>NanocoderAdd %<CR>', desc = 'Add current buffer' },
    { '<leader>as', '<cmd>NanocoderSend<CR>', mode = 'v', desc = 'Send to nanocoder' },
    { '<leader>aa', '<cmd>NanocoderDiffAccept<CR>', desc = 'Accept diff' },
    { '<leader>ad', '<cmd>NanocoderDiffDeny<CR>', desc = 'Deny diff' },
  },
  opts = {},
}
