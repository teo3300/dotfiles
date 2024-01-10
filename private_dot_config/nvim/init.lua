-- vim:foldmethod=marker

-- Vim setup {{{
local set = vim.opt

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
