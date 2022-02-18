local opt = vim.opt


opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.expandtab = true
opt.termguicolors = true
opt.mouse = "a"

-- For neovide
opt.guifont = "Jetbrains Mono:18"

vim.cmd [[
set shortmess+=c
syntax on
filetype plugin on
]]

vim.g.dashboard_custom_header = {
	'__      __   _                     ___  ',
	'\\ \\    / /  (_)                   / _ \\ ',
	' \\ \\  / /_ _ _ _ __ ___   ___ _ _| (_) |',
	'  \\ \\/ / _` | | `_ ` _ \\ / _ \\ `__\\__` |',
	'   \\  / (_| | | | | | | |  __/ |    / / ',
	'    \\/ \\__`_|_|_| |_| |_|\\___|_|   /_/  '
}
