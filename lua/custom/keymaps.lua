local keymap = vim.keymap

keymap.set('n', '<space>qq', '<cmd>wqall<cr>', { desc = 'Quick quit' })
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
keymap.set('n', '<space>mq', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
keymap.set('n', '<space>lm', '<cmd>Mason<CR>', { desc = 'Open mason' })
keymap.set('i', 'jk', '<ESC>', { desc = 'use j & k to esc' })
-- quick up and down
keymap.set('n', 'U', '10k', { desc = 'quick up' })
keymap.set('n', 'D', '10j', { desc = 'quick down' })
keymap.set('n', '\\', '<CMD>:sp<CR>', { desc = 'Split window horizontally' })
keymap.set('n', '|', '<CMD>:vsp<CR>', { desc = 'Split window vertically' })
keymap.set('n', '[', '<C-o>', { desc = '上一个光标的位置' })
keymap.set('n', ']', '<C-i>', { desc = '下一个光标的位置' })
keymap.set('n', '<space>p', '<Cmd>BufferPick<CR>', { desc = 'Pick a buffer' })

-- Markdown preview
keymap.set('n', '<space>mp', '<cmd>MarkdownPreview<CR>', { desc = 'Markdown Preview' })
keymap.set('n', '<space>ms', '<cmd>MarkdownPreviewStop<CR>', { desc = 'Markdown Preview Stop' })
