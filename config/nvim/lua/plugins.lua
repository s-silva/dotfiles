return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- appearance
  use 'EdenEast/nightfox.nvim'
  use 'hrsh7th/vim-vsnip'

  -- functional
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use 'karb94/neoscroll.nvim'
  use 'numToStr/Comment.nvim'
  use 'akinsho/nvim-toggleterm.lua'
  use 'kdheepak/lazygit.nvim'

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

  -- other

  use {
    'phaazon/hop.nvim',
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
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/popup.nvim', 
      'nvim-lua/plenary.nvim' 
    }
  }

  use {
    'nvim-telescope/telescope-fzf-native.nvim', 
    run = 'make' 
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
end)
