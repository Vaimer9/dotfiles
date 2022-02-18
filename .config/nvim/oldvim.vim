set guifont=JetBrains\ Mono:14
set mouse=a
set termguicolors
set number
set tabstop=4
set softtabstop=4
set autoindent
set smarttab
set relativenumber
set shiftwidth=4
set shortmess+=c

let mapleader=" "

call plug#begin()
Plug 'neovimhaskell/haskell-vim'
Plug 'habamax/vim-godot'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'tpope/vim-repeat'
Plug 'elixir-editors/vim-elixir'
Plug 'akinsho/bufferline.nvim'
Plug 'karb94/neoscroll.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'dstein64/nvim-scrollview'
Plug 'cohama/lexima.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'ggandor/lightspeed.nvim'
Plug 'andweeb/presence.nvim'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'psliwka/vim-smoothie'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'
Plug 'breuckelen/vim-resize'
Plug 'joshdick/onedark.vim'
call plug#end()


" Mapping for Bufferline
nnoremap <silent> <leader>, :BufferLineCycleNext<CR>
nnoremap <silent> <leader>. :BufferLineCyclePrev<CR>

" Personal Mappings
nnoremap <C-a> :NERDTreeToggle<CR>
nnoremap <leader>vs :e ~/.vshrc.toml<CR>
nnoremap <C-p> :e ~/.config/nvim/init.vim<CR>
nnoremap <C-o> :e ~/.zshrc<CR>
nnoremap <silent> <leader>md :e ~/Documents/code/todo.md<CR>

" Rust Specific Mappings
nnoremap <leader>cq :! cargo check<CR>
nnoremap <leader>cw :! cargo b<CR>
nnoremap <leader>ce :! cargo r<CR>
nnoremap <leader>p :Telescope<CR>
nnoremap <leader>f :! cargo fmt<CR>
nnoremap <leader>tt :! cargo t
nnoremap <leader>mr :! make<CR>
nnoremap <leader>ss :w<CR>

" Mappings for Dashboard
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>

colorscheme gruvbox

let g:airline_powerline_fonts           = 1
let g:airline_theme                     ='biogoo'
let g:presence_neovim_image_text        = "Busy don't DM"
let g:presence_main_image               = "file"
let g:toggleterm_terminal_mapping       = '<leader>t'
let g:dashboard_default_executive       ='telescope'
let g:indent_blankline_filetype_exclude = ['dashboard']

let g:dashboard_custom_header = [
\ '__      __   _                     ___  ',
\ '\ \    / /  (_)                   / _ \ ',
\ ' \ \  / /_ _ _ _ __ ___   ___ _ _| (_) |',
\ '  \ \/ / _` | | `_ ` _ \ / _ \ `__\__` |',
\ '   \  / (_| | | | | | | |  __/ |    / / ',
\ '    \/ \__`_|_|_| |_| |_|\___|_|   /_/  ',
\ ]

lua << EOF
	require('neoscroll').setup()
	require("bufferline").setup {
		separator_style = "slant"
	}
EOF

" The following configuration is for neovide. 

