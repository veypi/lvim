lvim.plugins = {
    {
        'aperezdc/vim-template',
        config = function()
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },
}
