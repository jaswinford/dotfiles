return {
	"nvim-treesitter/nvim-treesitter", 
	branch = 'main', 
	lazy = false, 
	build = ":TSUpdate",
  ensure_installed = "all",
	highlight = { enable = true },
	incremental_selection = { enable = true },
	textobjects = { enable = true },
}
