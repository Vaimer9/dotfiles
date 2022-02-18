vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}	
	use 'romgrk/doom-one.vim'
	use 'wbthomason/packer.nvim'
	use 'morhetz/gruvbox'
	use 'ryanoasis/vim-devicons'
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
		  'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
		config = function() require'nvim-tree'.setup {} end
	}
	use 'psliwka/vim-smoothie'
	use 'tpope/vim-commentary'
	use 'andweeb/presence.nvim'
	use 'ggandor/lightspeed.nvim'
	use 'elixir-editors/vim-elixir'
	use 'akinsho/bufferline.nvim'
	use 'karb94/neoscroll.nvim'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'dstein64/nvim-scrollview'
	use 'cohama/lexima.vim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'glepnir/dashboard-nvim'
end)
