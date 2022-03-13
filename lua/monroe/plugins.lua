local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- standard plugins --
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

-- useful as libraries --
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

-- colorscheme --
Plug 'lunarvim/colorschemes'

-- CMP -- 
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'

Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

-- LSP --
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

-- Telescope --
Plug "nvim-telescope/telescope.nvim"

-- Treesitter --
Plug "nvim-treesitter/nvim-treesitter"
Plug "p00f/nvim-ts-rainbow"

-- Autopairs --
Plug "windwp/nvim-autopairs"

vim.call('plug#end')
