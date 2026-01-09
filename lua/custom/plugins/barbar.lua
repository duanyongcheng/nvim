return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  keys = {
    { '<Tab>', '<cmd>BufferNext<cr>', desc = 'Next buffer' },
    { '<S-Tab>', '<cmd>BufferPrevious<cr>', desc = 'Previous buffer' },
    { '<leader>bp', '<cmd>BufferPin<cr>', desc = 'Pin buffer' },
    { '<leader>bo', '<cmd>BufferCloseAllButCurrentOrPinned<cr>', desc = 'Close other buffers' },
    -- 按位置跳转 (固定的 buffer 排在前面)
    { '<leader>1', '<cmd>BufferGoto 1<cr>', desc = 'Go to buffer 1' },
    { '<leader>2', '<cmd>BufferGoto 2<cr>', desc = 'Go to buffer 2' },
    { '<leader>3', '<cmd>BufferGoto 3<cr>', desc = 'Go to buffer 3' },
    { '<leader>4', '<cmd>BufferGoto 4<cr>', desc = 'Go to buffer 4' },
    { '<leader>5', '<cmd>BufferGoto 5<cr>', desc = 'Go to buffer 5' },
  },
  opts = {},
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
