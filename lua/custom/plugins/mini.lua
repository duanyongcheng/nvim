return {
  'echasnovski/mini.nvim',
  event = 'VeryLazy',
  specs = {
    { 'nvim-tree/nvim-web-devicons', enabled = false, optional = true },
  },
  init = function()
    package.preload['nvim-web-devicons'] = function()
      require('mini.icons').mock_nvim_web_devicons()
      return package.loaded['nvim-web-devicons']
    end
  end,
  config = function()
    -- require('mini.comment').setup {}
    -- require('mini.starter').setup {
    --   evaluate_single = false,
    --   header = '',
    --   items = {},
    --   footer = '',
    -- }
    require('mini.files').setup {}
    require('mini.ai').setup { mappings = {
      goto_left = '[',
      goto_right = ']',
    } }
    require('mini.icons').setup {
      style = 'glyph',
      file = {
        README = { glyph = '󰆈', hl = 'MiniIconsYellow' },
        ['README.md'] = { glyph = '󰆈', hl = 'MiniIconsYellow' },
      },
      filetype = {
        bash = { glyph = '󱆃', hl = 'MiniIconsGreen' },
        sh = { glyph = '󱆃', hl = 'MiniIconsGrey' },
        toml = { glyph = '󱄽', hl = 'MiniIconsOrange' },
      },
    }
    require('mini.surround').setup {
      mappings = {
        add = 'gsa', -- Add surrounding in Normal and Visual modes
        delete = 'gsd', -- Delete surrounding
        find = 'gsf', -- Find surrounding (to the right)
        find_left = 'gsF', -- Find surrounding (to the left)
        highlight = 'gsh', -- Highlight surrounding
        replace = 'gsr', -- Replace surrounding
        update_n_lines = 'gsn', -- Update `n_lines`

        suffix_last = 'l', -- Suffix to search with "prev" method
        suffix_next = 'n', -- Suffix to search with "next" method
      },
    }
  end,
}
