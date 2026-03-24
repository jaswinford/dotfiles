return {
	{
		'nvim-telescope/telescope.nvim', version = '*',
		dependencies = {
			'nvim-lua/plenary.nvim',
			-- optional but recommended
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		}
	},

	{ 
		"ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...
	},

	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate'
	},

	{ 
		"tpope/vim-fugitive" 
	},
	{
		"mason-org/mason.nvim",
		opts = {}
	},
	{ 
		"neovim/nvim-lspconfig" ,
	},
	{
		"github/copilot.vim",
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    }
}
}
