require('lazy').setup({
    {'tpope/vim-fugitive'},
    {'mbbill/undotree'},
    {'ThePrimeagen/harpoon', dependencies = {'nvim-lua/plenary.nvim'}},
    -- Telescope {{{
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = {'sharkdp/fd', 'nvim-lua/plenary.nvim'}
    },
    -- }}}
    -- Catppucicn {{{
    {
        'catppuccin',
        priority = 1000,
        lazy = false,
        opts = {transparent_background = true,},
        init = function() vim.cmd.colorscheme "catppuccin-mocha" end,
    },
    -- }}}
    -- nvim-
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',        

            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/nvim-cmp',
            'L3MON4D3/LuaSnip',
            {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
        }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        init = function()
            require('nvim-treesitter.configs').setup {
                ensure_installed = {
                    "c", "lua", "vim", "vimdoc", "query", "rust"
                },
                sync_install = false,
                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            }
        end
    },
})
