local vim = vim
local Plug = vim.fn['plug#']

vim.o.background = 'dark'


vim.call('plug#begin')

Plug('kyazdani42/nvim-tree.lua')
Plug('kyazdani42/nvim-web-devicons')
Plug('romgrk/barbar.nvim')
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-lua/plenary.nvim')
-- Plug('nvim-treesitter/nvim-treesitter')
Plug('nvim-telescope/telescope.nvim')
Plug('ibhagwan/fzf-lua')
Plug('numToStr/Comment.nvim')
Plug('folke/trouble.nvim')
Plug('f-person/git-blame.nvim')
Plug('rebelot/kanagawa.nvim')
Plug('github/copilot.vim')

vim.call('plug#end')

home=os.getenv('HOME')
package.path = home .. "/.config/nvim/?.lua;" .. package.path

require "common"
require "theme"
require "vimtree"
require "barbar"
require "lua_line"
-- require "treesitter"
require "telescope_config"
require "comment_config"
require "trouble"
