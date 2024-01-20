-- Vim setup {{{
local set = vim.opt

-- enable foldmethod=marker on every file
set.foldmethod = "marker"

-- tabs
set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.smarttab = true

-- line numbering
set.number = true
set.relativenumber = true

-- ruler
set.colorcolumn = "80,120"

-- better leader
vim.g.mapleader = ' '

-- }}}

-- Other keybindings {{{
local keymap = vim.keymap

--- normal mode 'n' {{{

-- terminal
keymap.set('n', '<leader>v', '<cmd>terminal<CR>')
-- movement
keymap.set('n', '<C-h>',     '<C-w>h')
keymap.set('n', '<C-j>',     '<C-w>j')
keymap.set('n', '<C-k>',     '<C-w>k')
keymap.set('n', '<C-l>',     '<C-w>l')
keymap.set('n', '<C-left>',  '<C-w>h')
keymap.set('n', '<C-down>',  '<C-w>j')
keymap.set('n', '<C-up>',    '<C-w>k')
keymap.set('n', '<C-right>', '<C-w>l')
-- clear highlights
keymap.set('n', '<Esc>',     '<cmd>noh<CR>')

--- }}}

--- insert mode 'i' {{{

keymap.set('i', '<C-h>', '<Left>')
keymap.set('i', '<C-j>', '<Down>')
keymap.set('i', '<C-k>', '<Up>')
keymap.set('i', '<C-l>', '<Right>')

--- }}}

-- }}}

-- Bootstrap lazy.nvim {{{
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
	    "--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
	    "--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    spec = {
        { import = 'plugins' },
    }
})

-- }}}

-- Call it from outside because apparently config gets called
-- before setting opts
vim.cmd.colorscheme "catppuccin-mocha"
