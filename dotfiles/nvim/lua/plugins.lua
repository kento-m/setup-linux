return {
  { -- colorscheme
    'nanotech/jellybeans.vim',
    config = function()
      vim.cmd([[colorscheme jellybeans]])
    end
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('plugin-config/nvim-tree')
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('plugin-config/lualine')
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('plugin-config/nvim-lspconfig')
    end
  },
  {
    'williamboman/mason.nvim',
    build = ":MasonUpdate",
    config = function()
      require('plugin-config/mason')
    end
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/vim-vsnip',
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      require('plugin-config/nvim-cmp')
    end
  },
}
