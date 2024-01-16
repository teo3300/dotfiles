return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        local nvimtree = require('nvim-tree')

        -- nvim-tree docs recommended entries
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- configure nvim-tree
        nvimtree.setup({
            view = {
                width = 30,
            },

            renderer = {
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = '▶',
                            arrow_open = '▼',
                        },
                    },
                },
            },
            
            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            },

            filters = {
                custom = { '.DS_Store' },
            },
            git = {
                ignore = false
            },
        })

        local keymap = vim.keymap

        -- Keymaps work in normal mode
        -- In mode <mode> set the key <key> to command <command>
        keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>')
        keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>')
        keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>')
        keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>')
    end
}
