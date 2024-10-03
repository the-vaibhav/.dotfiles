-- set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- set 'jj' to exit insert mode
vim.keymap.set('i', 'jj', '<Esc>')


-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- save file 
vim.keymap.set('n', '<leader>w', '<cmd> w <CR>', opts)

-- quite file
vim.keymap.set('n', '<leader>q', '<cmd> q <CR>', opts)

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- Vertical scroll and center 
vim.keymap.set('n', '<C-d>n', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and Center 
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Navigate between splits
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)