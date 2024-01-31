return {
    'catppuccin',
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = {
        transparent_background = true,
    },
    init = function()
        vim.cmd.colorscheme "catppuccin-mocha"
    end,
}
