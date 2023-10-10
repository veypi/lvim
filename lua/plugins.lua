lvim.plugins = {
    {
        'aperezdc/vim-template',
        config = function()
        end,
    },
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({ "css", "scss", "html", "javascript", "vue", "ts" }, {
                RGB = true,      -- #RGB hex codes
                RRGGBB = true,   -- #RRGGBB hex codes
                RRGGBBAA = true, -- #RRGGBBAA hex codes
                rgb_fn = true,   -- CSS rgb() and rgba() functions
                hsl_fn = true,   -- CSS hsl() and hsla() functions
                css = true,      -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
                css_fn = true,   -- Enable all CSS *functions*: rgb_fn, hsl_fn
            })
        end,
    },
    {
        "okuuva/auto-save.nvim",
        config = function()
            require("auto-save").setup {
                enabled = true, -- start auto-save when the plugin is loaded (i.e. when your package manager loads it)
                execution_message = {
                    enabled = true,
                    message = function() -- message to print on save
                        return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
                    end,
                    dim = 0.18,                                   -- dim the color of `message`
                    cleaning_interval = 1250,                     -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
                },
                trigger_events = {                                -- See :h events
                    immediate_save = { "BufLeave", "FocusLost" }, -- vim events that trigger an immediate save
                    defer_save = {},                              -- vim events that trigger a deferred save (saves after `debounce_delay`)
                    -- cancel_defered_save = { "InsertEnter" },      -- vim events that cancel a pending deferred save
                },
                -- function that takes the buffer handle and determines whether to save the current buffer or not
                -- return true: if buffer is ok to be saved
                -- return false: if it's not ok to be saved
                -- if set to `nil` then no specific condition is applied
                condition = nil,

                write_all_buffers = false, -- write all buffers when the current one meets `condition`
                noautocmd = false,         -- do not execute autocmds when saving
                debounce_delay = 1000,     -- delay after which a pending save is executed
                -- log debug messages to 'auto-save.log' file in neovim cache directory, set to `true` to enable
                debug = false,
            }
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },
}
