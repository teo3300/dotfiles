-- Set leader
vim.g.mapleader = ' '

local map = vim.keymap.set

-- (n) quick mappings in normal mode {{{
-- back to Ex
map('n', '<leader>pv', vim.cmd.Ex)
map('n', 'q', vim.cmd.Ex)
-- move in tabs
map('n', '<Tab>', vim.cmd.tabn)
map('n', '<S-Tab>', vim.cmd.tabp)
-- keep cursor in handy position
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzc')
-- unhilight
map('n', '<Esc>', vim.cmd.noh)
-- }}}
-- (i) quick mappings in insert mode {{{
-- move in insert mode
map('i', '<C-h>', '<Left>')
map('i', '<C-j>', '<Down>')
map('i', '<C-k>', '<Up>')
map('i', '<C-l>', '<Right>')
-- }}}
-- (v) quick mappings in visual mode {{{
map('v', 'J', "<cmd>m '>+1<CR>gv=gv'")
map('v', 'K', "<cmd>m '<-2<CR>gv=gv'")
-- }}}

-- Copy/cut in sys clip {{{
map('n', '<leader>y', '"+y')
map('v', '<leader>y', '"+y')
map('n', '<leader>d', '"_d')
map('v', '<leader>d', '"_d')
-- }}}

-- Telescope {{{
local telescope = require('telescope.builtin')
map('n', '<leader>ff', telescope.find_files)
map('n', '<leader>fp', telescope.git_files)
map('n', '<leader>fg', telescope.live_grep)
map('n', '<leader>fb', telescope.buffers)
map('n', '<leader>fh', telescope.help_tags)
map('n', '<leader>fm', telescope.marks)
-- }}}
-- Harpoon {{{
-- Finally configure harpoon
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
-- Add current file to harpoon
map('n', '<leader>a', mark.add_file)
map('n', '<C-e>', ui.toggle_quick_menu)
-- Harpoon nav file done with qwerty
map('n', '<C-h>', function() ui.nav_file(1) end)
map('n', '<C-j>', function() ui.nav_file(2) end)
map('n', '<C-k>', function() ui.nav_file(3) end)
map('n', '<C-l>', function() ui.nav_file(4) end)
-- }}}
-- UndoTree {{{
map('n', '<leader>u', vim.cmd.UndotreeToggle)
-- }}}
-- Vim-fugitive {{{
map('n', '<leader>gs', vim.cmd.Git)
-- }}}
