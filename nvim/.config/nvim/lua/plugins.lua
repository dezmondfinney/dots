-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- You can alias plugin names
  use {'dracula/vim', as = 'dracula'}

  use {'dag/vim-fish'}

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'voldikss/vim-floaterm'}

  use {'folke/zen-mode.nvim'}

  use {'steelsojka/pears.nvim'}

  use {
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',
  }

  use {'mattn/emmet-vim'}

  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- require("zen-mode").toggle({
  --   window = {
  --     width = .85 -- width will be 85% of the editor width
  --   }
  -- })



end)

