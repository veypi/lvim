lvim.plugins = {
    {
        'aperezdc/vim-template',
        config = function()
            vim.cmd("let g:templates_directory = '~/.config/lvim/templates'")
        end,
    },
}
