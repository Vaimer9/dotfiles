local opt = vim.opt

vim.g.mapleader = " "

vim.notify = require('notify')

opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.expandtab = true
opt.termguicolors = true
opt.mouse = "a"

vim.cmd [[
set shortmess+=c
syntax on
filetype plugin on
set updatetime=300
set fillchars=eob:\ ,fold:\ ,vert:\│
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
let g:doom_one_terminal_colors = v:true
]]

vim.g.dashboard_default_executive = "telescope"
vim.g.dashboard_custom_header = {
	'__      __   _                     ___  ',
	'\\ \\    / /  (_)                   / _ \\ ',
	' \\ \\  / /_ _ _ _ __ ___   ___ _ _| (_) |',
	'  \\ \\/ / _` | | `_ ` _ \\ / _ \\ `__\\__` |',
	'   \\  / (_| | | | | | | |  __/ |    / / ',
	'    \\/ \\__`_|_|_| |_| |_|\\___|_|   /_/  '
}

vim.g.dashboard_custom_footer = {
    "#sigmagrindset",
}
require'colorizer'.setup()
