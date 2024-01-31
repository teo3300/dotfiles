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

-- better leader ('\' is actually good on us keyboard
-- vim.g.mapleader = ' '

set.laststatus = 2

-- }}}

-- Bootstrap lazy.nvim {{{
-- Bro, for the love of god, read the F-ing
-- https://github.com/folke/lazy.nvim
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
