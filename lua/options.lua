lvim.format_on_save.enabled = true


vim.g.user = "veypi"
vim.g.email = "i@veypi.com"
vim.g.templates_directory = '~/.config/lvim/templates'

local options = {
    fileencoding = "utf-8", -- the encoding written to a file

    textwidth = 70,
    wrap = true,                             -- display lines as one long line

    showtabline = 1,                         -- always show tabs
    expandtab = true,                        -- convert tabs to spaces
    tabstop = 4,                             -- insert 4 spaces for a tab
    shiftwidth = 4,                          -- the number of spaces inserted for each indentation

    cursorline = true,                       -- highlight the current line

    signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time

    backup = false,                          -- creates a backup file
    clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
    cmdheight = 1,                           -- more space in the neovim command line for displaying messages
    completeopt = { "menuone", "noselect" }, -- mostly just for cmp
    conceallevel = 0,                        -- so that `` is visible in markdown files
    hlsearch = true,                         -- highlight all matches on previous search pattern
    ignorecase = true,                       -- ignore case in search patterns
    mouse = "a",                             -- allow the mouse to be used in neovim
    pumheight = 10,                          -- pop up menu height
    showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
    smartcase = true,                        -- smart case
    smartindent = true,                      -- make indenting smarter again
    splitbelow = true,                       -- force all horizontal splits to go below current window
    splitright = true,                       -- force all vertical splits to go to the right of current window
    swapfile = false,                        -- creates a swapfile
    termguicolors = true,                    -- set term gui colors (most terminals support this)
    timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete (in milliseconds)
    undofile = true,                         -- enable persistent undo
    updatetime = 100,                        -- faster completion (4000ms default)
    writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    number = true,                           -- set numbered lines
    laststatus = 3,
    showcmd = false,
    ruler = false,
    relativenumber = true, -- set relative numbered lines
    numberwidth = 2,       -- set number column width to 2 {default 4}
    scrolloff = 0,
    sidescrolloff = 8,
    guifont = "monospace:h17", -- the font used in graphical neovim applications
    -- colorcolumn = "80",
    -- colorcolumn = "120",
}

vim.opt.relativenumber = true
for k, v in pairs(options) do
    vim.opt[k] = v
end
