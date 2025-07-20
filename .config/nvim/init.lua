require("config.lazy")
vim.o.number = true
vim.wo.number = true

vim.g.mouse = 'a'
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.encoding = 'utf-8'

vim.opt.swapfile = false

vim.opt.scrolloff = 7
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true

vim.opt.fileformat = 'unix'

vim.opt.termguicolors = true

-- Exit terminal
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })


-- Map <leader>f to fzf-lua's file search
vim.keymap.set("n", "<leader>f", require("fzf-lua").files, { desc = "Fzf files" })
-- Map <leader>g to fzf-lua's live grep
vim.keymap.set("n", "<leader>g", require("fzf-lua").live_grep, { desc = "Fzf live grep" })


vim.cmd("colorscheme kanagawa")
