require('v9.plugins')
require('v9.options')
require('v9.configuration.indent-blankline')
require('v9.configuration.bufferline')
require('v9.configuration.nvim-tree')
require('v9.configuration.presence')
require('v9.configuration.statusline')

vim.g.mapleader = " "

vim.cmd([[

" Themes 

colorscheme doom-one 

nnoremap <leader>ss :w<CR>

nnoremap <silent> <leader>, :BufferLineCycleNext<CR>
nnoremap <silent> <leader>. :BufferLineCyclePrev<CR>

nnoremap <C-a> :NvimTreeToggle <CR>
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
]])
