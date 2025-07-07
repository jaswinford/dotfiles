vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require('nvim-tree').setup {
	view = {
		width = 30,
		side = 'left',
	},
	renderer = {
		highlight_git = true,
		highlight_opened_files = 'all',
		icons = {
			git_placement = 'after',
			glyphs = {
				default = '',
				symlink = '',
				git = {
					unstaged = '✗',
					staged = '✓',
					unmerged = '',
					renamed = '➜',
					untracked = '★',
					deleted = '',
					ignored = '◌'
				}
			}
		}
	},
	filters = {
		dotfiles = true,
		custom = { '.git', '.DS_Store' }
	}
}
