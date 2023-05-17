vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  --Lualine
  use('nvim-lualine/lualine.nvim')

  --Neotree
  use {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = { 
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    }
  }
  --Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  --Colour Scheme
  use {'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end }
  
  --Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  --LSP
  use('williamboman/mason.nvim')  --Package manager to easily install LSP's
  use('williamboman/mason-lspconfig.nvim') -- Bridges gap between mason.nvim and lspconfig
  use('neovim/nvim-lspconfig') --Allows setup of lsp configurations to communicate between neovim and lsp's

  --Auto-Complete
  use('hrsh7th/nvim-cmp') --Autocompletion engine
  use('hrsh7th/cmp-nvim-lsp') --Provides lsp snippets to cmp

  --Snippets
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip') --Completion engine for luasnip
  use('rafamadriz/friendly-snippets') --Preconfigured snippets

  --Telescope image previews
  use('nvim-lua/popup.nvim')
  use('nvim-telescope/telescope-media-files.nvim')
end)


