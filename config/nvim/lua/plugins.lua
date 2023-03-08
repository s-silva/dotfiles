return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- appearance
  use 'EdenEast/nightfox.nvim'
  use 'glepnir/dashboard-nvim'
  use 'folke/twilight.nvim'
  use 'folke/zen-mode.nvim'

  -- functional
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use 'numToStr/Comment.nvim'
  use 'akinsho/nvim-toggleterm.lua'
  use 'kdheepak/lazygit.nvim'
  use 'danymat/neogen'
  use 'drybalka/tree-climber.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- lsp related
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/nvim-cmp',
    'onsails/lspkind-nvim',
    'neovim/nvim-lspconfig',
    'jose-elias-alvarez/null-ls.nvim',
    'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'
  }

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'saadparwaiz1/cmp_luasnip'

  use {
    'phaazon/hop.nvim',
    branch = 'v2',
    as = 'hop'
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  use {
    'hoob3rt/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    }
  }

  use {
    'jakemason/ouroboros',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/popup.nvim', 
      'nvim-lua/plenary.nvim' 
    }
  }

  use 'nvim-telescope/telescope-file-browser.nvim'

  use {
    'nvim-telescope/telescope-fzf-native.nvim', 
    run = 'make' 
  }

  use 'nvim-telescope/telescope-project.nvim'
end)
