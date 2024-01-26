return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    init = function()

        -- mappings with leading {{{
        local wk = require('which-key')
        local opts = {
            mode = 'n',
            prefix = ' ',
            buffer = nil,
            silent = true,
            noremap = true,
            nowait = true,
        }
        -- abbrev
        local telescope = require('telescope.builtin')
        -- actual mappings
        local mappings = {
            f = {
                name = 'Telescope',
                f = {telescope.find_files   , 'Find file'},
                g = {telescope.live_grep    , 'Live grep'},
                b = {telescope.buffers      , 'Buffer search'},
                h = {telescope.help_tags    , 'Help tags'},
            },
            e = {
                name = 'NvimTree',
                e = {'<cmd>NvimTreeToggle<CR>'          , 'Toggle'},
                f = {'<cmd>NvimTreeFindFileToggle<CR>'  , 'Find file'},
                c = {'<cmd>NvimTreeCollapse<CR>'        , 'Collapse'},
                r = {'<cmd>NvimTreeRefresh<CR>'         , 'Refresh'},
            },
        }
        wk.register(mappings, opts)
        -- }}}

        -- quick mappings in normal mode {{{
        local normal = {
            ['<leader>v']   = {'<cmd>terminal<CR>'  , 'Terminal'},
            ['<Tab>']       = {'<cmd>tabn<CR>'      , 'Next tab'},
            ['<S-Tab>']     = {'<cmd>tabp<CR>'      , 'Prev tab'},
            ['<C-h>']       = {'<C-w>h'             , 'h'},
            ['<C-j>']       = {'<C-w>j'             , 'j'},
            ['<C-k>']       = {'<C-w>k'             , 'k'},
            ['<C-l>']       = {'<C-w>l'             , 'l'},
            ['<Esc>']       = {'<cmd>noh<CR>'       , ':noh'},
            ['q']           = {'<cmd>q<CR>'         , 'Quit'},
        }
        wk.register(normal, {
                mode = 'n',
                buffer = nil,
                silent = true,
                noremap = true,
                nowait = true,
        })
        -- }}}

        -- quick mappings in insert mode {{{
        local insert = {
            ['<C-h>']       = {'<Left>'             , 'h'},
            ['<C-j>']       = {'<Down>'             , 'j'},
            ['<C-k>']       = {'<Up>'               , 'k'},
            ['<C-l>']       = {'<Right>'            , 'l'},
        }
        wk.register(insert, {
                mode = 'i',
                buffer = nil,
                silent = true,
                noremap = true,
                nowait = true,
        })
        -- }}}

    end
}
