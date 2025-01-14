-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  -- Navigation
  use 'rmagatti/auto-session'
  use 'nvim-lua/plenary.nvim' -- Required for harpoon
  use('petertriho/nvim-scrollbar')
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use({
    'utilyre/barbecue.nvim',
    tag = '*',
    requires = {
      'SmiteshP/nvim-navic',
      'nvim-tree/nvim-web-devicons', -- optional dependency
    },
    after = 'nvim-web-devicons',     -- keep this if you're using NvChad
  })
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    requires = {{'nvim-lua/plenary.nvim'}}
  }
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }
  use 'karb94/neoscroll.nvim'
  use { 'kevinhwang91/nvim-bqf', ft = 'qf' }
  use {
    'junegunn/fzf',
    run = function()
      vim.fn['fzf#install']()
    end
  }


  -- Color scheme
  -- use 'shaunsingh/nord.nvim'
  -- use 'rebelot/kanagawa.nvim'
  -- use { 'navarasu/onedark.nvim', as = 'onedark' }
  -- use {'EdenEast/nightfox.nvim', as = 'nightfox'}
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use 'nvim-tree/nvim-web-devicons'
  use { 'tzachar/local-highlight.nvim' }
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')


  -- Git
  use('tpope/vim-fugitive')
  use 'lewis6991/gitsigns.nvim'


  -- Tools
  use('mbbill/undotree')
  use('tpope/vim-surround')
  use('tpope/vim-repeat')
  use({
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn['mkdp#util#install']() end,
  })
  use { 'akinsho/toggleterm.nvim', tag = '*' }
  use {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function()
      require('nvim-autopairs').setup {}
    end
  }
  use 'ntpeters/vim-better-whitespace'
  use {
    'mg979/vim-visual-multi',
    branch = 'master',
  }
  use { 'Pocco81/auto-save.nvim' }


  -- Test
  use({
    'nvim-neotest/neotest',
    requires = {
      'nvim-neotest/neotest-go',
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter'
    },
  })


  -- Debugger
  use {
    'mfussenegger/nvim-dap',
    requires = {
      'leoluz/nvim-dap-go',
      'rcarriga/nvim-dap-ui',
      'theHamsta/nvim-dap-virtual-text',
      'nvim-neotest/nvim-nio',
      'williamboman/mason.nvim',
    },
  }
  use 'mfussenegger/nvim-dap-python'
  use {
    'rcarriga/nvim-dap-ui',
    requires = {
      'mfussenegger/nvim-dap',
      "nvim-neotest/nvim-nio"
    }
  }
  use 'theHamsta/nvim-dap-virtual-text'
  use { 'Weissle/persistent-breakpoints.nvim' }
  use 'leoluz/nvim-dap-go'


  -- LSP
  use 'mfussenegger/nvim-jdtls'
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
end)
