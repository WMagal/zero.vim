local palette = require("zero.palette").colors

local M = {}

function M.apply()
    local highlights = {
        Normal = {
            fg = palette.fg,
            bg = palette.bg,
        },

        NormalFloat = {
            fg = palette.fg,
            bg = palette.bg_alt,
        },

        Comment = {
            fg      = palette.muted,
            italic  = true,
        },

        String = {
            fg = palette.saber,
        },

        Function = {
            fg = palette.crystal,
        },

        Keyword = {
            fg   = palette.zero_red,
            bold = true,
        },

        Type = {
            fg = palette.armor_red,
        },

        Number = {
            fg = palette.gold,
        },

        Boolean = {
            fg = palette.gold,
        },

        Visual = {
            bg = palette.surface,
        },

        Search = {
            fg = palette.bg,
            bg = palette.gold,
        },

        Error = {
            fg = palette.armor_red,
        },
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M

