vim.o.number = true
vim.wo.number = true

vim.g.mouse = 'a'
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


vim.opt.encoding = 'utf-8'

vim.opt.swapfile = false

vim.opt.scrolloff = 7
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true

vim.opt.fileformat = 'unix'

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

