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
		}
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
    use 'tpope/vim-surround'
    use 'rcarriga/nvim-notify'
    use 'nvim-lua/popup.nvim'
    use 'xiyaowong/nvim-transparent'
    use 'chrisbra/sudoedit.vim'

    -- Lsp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'
    use 'hrsh7th/vim-vsnip'
    use 'nvim-treesitter/nvim-treesitter'
    use 'drewtempelmeyer/palenight.vim'
    use 'flrnd/plastic.vim'
    use 'tomasiser/vim-code-dark'
    use 'feline-nvim/feline.nvim'
    use 'norcalli/nvim-colorizer.lua'
    use 'MunifTanjim/nui.nvim'
    use 'alaviss/nim.nvim'
    use 'narutoxy/dim.lua'
    use 'folke/tokyonight.nvim'
    use 'rakr/vim-one'
    use 'Mangeshrex/everblush.vim'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'skywind3000/asyncrun.vim'
    use 'doums/darcula'
    use 'beauwilliams/focus.nvim'
    use 'sindrets/winshift.nvim'
end)
