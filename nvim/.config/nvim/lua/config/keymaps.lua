local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- buffer navigation
map('n', '<leader><Tab>', ':b#<CR>', opts)
map('n', '<S-l>', ':bn<CR>', opts)
map('n', '<S-h>', ':bp<CR>', opts)
map('n', '<S-x>', ':Bd<CR>', opts)

map('n', '<leader>sp', ':vsp<CR>', opts)
-- map('n', '<leader>wd', '<C-w>q', opts)

map('n', '<C-h>', '<C-w><C-h>', opts)
map('n', '<C-j>', '<C-w><C-j>', opts)
map('n', '<C-k>', '<C-w><C-k>', opts)
map('n', '<C-l>', '<C-w><C-l>', opts)

map('x', '<', '<gv', opts)
map('x', '>', '>gv', opts)
