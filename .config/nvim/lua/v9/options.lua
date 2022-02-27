local opt = vim.opt

vim.cmd[[colorscheme doom-one]]

vim.g.mapleader = " "

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
autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
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
