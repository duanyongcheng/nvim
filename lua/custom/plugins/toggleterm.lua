return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    direction = 'float', -- 默认浮动模式
    size = 20, -- 终端高度（方向为 horizontal 时生效）
    float_opts = {
      border = 'rounded', -- 边框样式（可选：single, double, shadow, curved, rounded）
      width = 120, -- 浮动窗口宽度（单位：字符数）
      height = 30, -- 浮动窗口高度
    },
  },
  keys = { -- 自定义快捷键（可覆盖 LazyVim 默认键位）
    {
      '<C-\\>',
      '<cmd>ToggleTerm<cr>',
      mode = { 'n', 't' },
      desc = '[ToggleTerm] Open floating terminal',
    },
  },
}
