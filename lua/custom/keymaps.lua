local keymap = vim.keymap

keymap.set('n', '<space>qq', '<cmd>wqall<cr>', { desc = 'Smart Find Files' })
keymap.set('n', 'J', '10j')
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
keymap.set('n', '<space>m', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
keymap.set('n', '<space>lm', '<cmd>Mason<CR>', { desc = 'Open mason' })
