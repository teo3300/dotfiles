-- Set leader
vim.g.mapleader = ' '

-- quick mappings in normal mode {{{
    -- back to Ex
    vim.keymap.set('n', '<leader>pv',   vim.cmd.Ex)
    vim.keymap.set('n', 'q',            vim.cmd.Ex) 
    -- move in tabs
    vim.keymap.set('n', '<Tab>',        vim.cmd.tabn)
    vim.keymap.set('n', '<S-Tab>',      vim.cmd.tabp)
    -- quick normal and quit
    vim.keymap.set('n', '<Esc>',        vim.cmd.noh)
-- }}}
-- quick mappings in insert mode {{{
    -- move in insert mode
    vim.keymap.set('i', '<C-h>',        '<Left>')
    vim.keymap.set('i', '<C-j>',        '<Down>')
    vim.keymap.set('i', '<C-k>',        '<Up>')
    vim.keymap.set('i', '<C-l>',        '<Right>')
-- }}}

-- Telescope {{{
    local telescope = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', telescope.find_files)
    vim.keymap.set('n', '<leader>fp', telescope.git_files)
    vim.keymap.set('n', '<leader>fg', telescope.live_grep)
    vim.keymap.set('n', '<leader>fb', telescope.buffers)
    vim.keymap.set('n', '<leader>fh', telescope.help_tags)
-- }}}
-- Harpoon {{{
    -- Finally configure harpoon
    local mark = require('harpoon.mark')
    local ui = require('harpoon.ui')
    -- Add current file to harpoon
    vim.keymap.set('n', '<leader>a',    mark.add_file)
    vim.keymap.set('n', '<C-e>',        ui.toggle_quick_menu)
    -- Harpoon nav file done with qwerty
    vim.keymap.set('n', '<C-h>',        function() ui.nav_file(1) end)
    vim.keymap.set('n', '<C-j>',        function() ui.nav_file(2) end)
    vim.keymap.set('n', '<C-k>',        function() ui.nav_file(3) end)
    vim.keymap.set('n', '<C-l>',        function() ui.nav_file(4) end)
-- }}}
-- UndoTree {{{
    vim.keymap.set('n', '<leader>u',    vim.cmd.UndotreeToggle)
-- }}}
-- Vim-fugitive {{{
    vim.keymap.set('n', '<leader>gs',   vim.cmd.Git)
-- }}}
