local config = require "material.config".config

local M = {}

M.cleanup_augroups = function ()
    if vim.g.colors_name ~= "material" then
        vim.api.nvim_del_augroup_by_name("Material")
    end
end
