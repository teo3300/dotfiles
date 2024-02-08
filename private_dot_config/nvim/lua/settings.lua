local set = vim.opt

-- enable foldmethod=marker on every file
set.foldmethod = "marker"
set.foldlevelstart = 99

-- tabs
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.smarttab = true

-- line numbering
set.number = true
set.relativenumber = true

-- long undo instead of swapfile
set.swapfile = false
set.backup = false
set.undodir = os.getenv('HOME') .. '/.vim/undodir'
set.undofile = true

set.scrolloff = 8
set.signcolumn = 'yes'

-- ruler
set.colorcolumn = "80,120"

-- better leader ('\' is actually good on us keyboard)
vim.g.mapleader = ' '

-- attempt autoformatting on save using default LSP
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
