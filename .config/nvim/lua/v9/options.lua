local opt = vim.opt

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
opt.updatetime = 300
opt.laststatus=3
vim.g.monokaipro_filter = "classic"
vim.g.transparent_enabled = true

vim.g.gui_font_default_size = 12
vim.g.gui_font_size = vim.g.gui_font_default_size
vim.g.gui_font_face = "Iosevka Term"

RefreshGuiFont = function()
  vim.opt.guifont = string.format("%s:h%s",vim.g.gui_font_face, vim.g.gui_font_size)
end

ResizeGuiFont = function(delta)
  vim.g.gui_font_size = vim.g.gui_font_size + delta
  RefreshGuiFont()
end

ResetGuiFont = function ()
  vim.g.gui_font_size = vim.g.gui_font_default_size
  RefreshGuiFont()
end

-- Call function on startup to set default value
ResetGuiFont()

-- Keymaps

local opts = { noremap = true, silent = true }

vim.keymap.set({'n', 'i'}, "<C-+>", function() ResizeGuiFont(1)  end, opts)
vim.keymap.set({'n', 'i'}, "<C-->", function() ResizeGuiFont(-1) end, opts)
vim.keymap.set({'n', 'i'}, "<C-BS>", function() ResetGuiFont() end, opts)

vim.cmd [[

colorscheme one
set shortmess+=c
set hidden
syntax on
filetype plugin on

set updatetime=300
set fillchars=eob:\ ,fold:\ ,vert:\│

autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2

let g:doom_one_terminal_colors = v:true

let g:mkdp_page_title = '${name}'
let g:mkdp_browser = 'firefox'
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
