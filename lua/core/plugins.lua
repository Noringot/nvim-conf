-- Install packer
local install_path = vim.fn. stdpath'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	is_bootstrap = true
	vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
	vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
	
	use 'wbthomason/packer.nvim'

	-----------------------------------------------------------
	-- ПЛАГИНЫ ВНЕШНЕГО ВИДА
	-----------------------------------------------------------
	use 'doums/darcula'
	use 'kyazdani42/nvim-web-devicons'
	use 'nvim-lualine/lualine.nvim'
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

	-----------------------------------------------------------
	-- НАВИГАЦИЯ
	-----------------------------------------------------------
	use "nvim-tree/nvim-tree.lua"
	use 'majutsushi/tagbar'
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { {'nvim-lua/plenary.nvim'} } }
 	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	-----------------------------------------------------------
	-- HTML и CSS
	-----------------------------------------------------------
	use 'idanarye/breeze.vim'
	use 'alvan/vim-closetag'
	use 'ap/vim-css-color'
	use 'mattn/emmet-vim'

	-----------------------------------------------------------
	-- CMP
	-----------------------------------------------------------
	-- use "hrsh7th/cmp-nvim-lsp"

	-----------------------------------------------------------
	-- LSP
	-----------------------------------------------------------
	 use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
	-----------------------------------------------------------
	-- РАЗНОЕ
	-----------------------------------------------------------
	use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
	-- Даже если включена русская раскладка vim команды будут работать
	use 'powerman/vim-plugin-ruscmd'
	-- Обрамляет или снимает обрамление. Выдели слово, нажми S и набери <h1>
	use "tpope/vim-surround"
	-- Комментирует по gc все, вне зависимости от языка программирования
	use {
			'numToStr/Comment.nvim',
			config = function()
					require('Comment').setup()
			end
	}
	-- Закрывает автоматом скобки
	use {
		"windwp/nvim-autopairs",
			config = function() require("nvim-autopairs").setup {} end
	}
end)
