-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
vim.cmd [[
  highlight Comment cterm=italic gui=italic
  highlight SpecialComment cterm=italic gui=italic
  highlight Todo cterm=italic gui=italic
]]


return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- use "folke/tokyonight.nvim"
  use 'lewis6991/gitsigns.nvim'
  use 'christoomey/vim-tmux-navigator'
  use 'tpope/vim-fugitive'
  use 'sbdchd/neoformat'
  use("anuvyklack/animation.nvim")
  use  "HakonHarnes/img-clip.nvim"
  use 'rachartier/tiny-glimmer.nvim'
  use('nvim-tree/nvim-web-devicons')
  use "EdenEast/nightfox.nvim"
  
  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })   

  use {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      requires = { {"nvim-lua/plenary.nvim"} }
  }
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
    requires = {
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      {'neovim/nvim-lspconfig'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lua'},
      {'rafamadriz/friendly-snippets'},
      {'L3MON4D3/LuaSnip'},
    }
  }
  use {
    'folke/noice.nvim',
    requires = {
      {'MunifTanjim/nui.nvim'},
      {'rcarriga/nvim-notify'},
    }
  }
  use {
    "startup-nvim/startup.nvim",
    requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim"},
  }
  -- use {
  --   'nvimdev/dashboard-nvim',
  --   event = 'VimEnter',
  --   config = function()
  --     require('dashboard').setup {
  --       -- config
  --     }
  --   end,
  --   requires = {'nvim-tree/nvim-web-devicons'}
  -- }
  use({
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
  })
end)

