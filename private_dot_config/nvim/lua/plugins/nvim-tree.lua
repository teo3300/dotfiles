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

            sort = {
                sorter = "case_sensitive",
            },

            renderer = {
                group_empty = true,
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = '>',
                            arrow_open = 'v',
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

    end
}
