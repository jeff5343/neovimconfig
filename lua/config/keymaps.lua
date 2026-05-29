-- basic oeprations
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', { desc = '[W]rite to current file' })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- window movement
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- quick fix navigation
vim.keymap.set('n', '<A-n>', '<cmd>cnext<CR>', { desc = 'Quick fix next' })
vim.keymap.set('n', '<A-m>', '<cmd>cprev<CR>', { desc = 'Quick fix previous' })

-- i dunno
vim.keymap.set('n', '<Plug>VimwikiRemoveHeaderLevel', '<Nop>')
