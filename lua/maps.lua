#! /usr/bin/env lua
--
-- maps.lua
-- Copyright (C) 2023 veypi <i@veypi.com>
--
-- Distributed under terms of the MIT license.
--


lvim.keys.normal_mode["<F2>"] = ":NvimTreeToggle<CR>"
lvim.keys.normal_mode["q"] = ":bd<CR>"
lvim.keys.normal_mode["Q"] = ":qa!<CR>"

lvim.keys.normal_mode["\\["] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["\\]"] = ":BufferLineCycleNext<CR>"

-- lvim.builtin.which_key.mappings["\["] = ":BufferLineCyclePrev<CR>"
-- nmap <leader>[ :BufferLineCyclePrev<CR>
-- nmap <leader>] :BufferLineCycleNext<CR>
-- lvim.builtin.which_key.mappings["["] = {
--     "<cmd>BufferLineCyclePrev<CR>", "Prev buffer"
-- }
-- lvim.builtin.which_key.mappings["="] = {
--     "<cmd>BufferLineCycleNext<CR>", "next buffer"
-- }
lvim.builtin.which_key.mappings["f"] = {
    "<cmd>Telescope find_files<cr>", "Find files"
}
lvim.builtin.which_key.mappings["t"] = {
    "<cmd>Telescope live_grep<cr>", "Find word"
}
