return {
  {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- optional but recommended
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
  },

  {
    "nvim-orgmode/orgmode",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-orgmode/telescope-orgmode.nvim",
      "nvim-orgmode/org-bullets.nvim",
    },
    event = "VeryLazy",
    ft = { "org" },
    config = function()
      -- Setup orgmode
      require("orgmode").setup {
        org_agenda_files = "~/org/**/*",
        org_default_notes_file = "~/org/notes.org",
        org_todo_keywords = { "TODO", "[ ]", "|", "[x]", "[X]", "DONE" },
      }
      require("org-bullets").setup()

      -- Experimental LSP support
      vim.lsp.enable "org"
    end,
  },
  -- {
  --   "epwalsh/obsidian.nvim",
  --   version = "*",
  --   lazy = true,
  --   ft = "markdown",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "hrsh7th/nvim-cmp",
  --     "epwalsh/pomo.nvim",
  --   },
  --   opts = {
  --     workspaces = {
  --       {
  --         name = "personal",
  --         path = "~/vault",
  --       },
  --     },
  --
  --     notes_subdir = "notes",
  --
  --     daily_notes = {
  --       folder = "journal",
  --       date_format = "%Y-%m-%d",
  --       default_tags = { "journal" },
  --       template = nil,
  --     },
  --
  --     completion = {
  --       nvim_cmp = true,
  --       min_chars = 2,
  --     },
  --
  --     templates = {
  --       folder = "templates",
  --       date_format = "%Y-%m-%d",
  --       time_format = "%H:%M",
  --     },
  --
  --     attachments = {
  --       img_folder = "assets/imgs",
  --       -- Optional, customize the default name or prefix when pasting images via `:ObsidianPasteImg`.
  --       ---@return string
  --       img_name_func = function()
  --         -- Prefix image names with timestamp.
  --         return string.format("%s-", os.time())
  --       end,
  --     },
  --   },
  -- },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = ...,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
  },

  {
    "tpope/vim-fugitive",
  },
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
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
          require("which-key").show { global = false }
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
  },
}
