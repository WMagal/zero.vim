local p = require("zero.palette").colors

local M = {}

function M.apply()
    local groups = {
        -- General
        TelescopeNormal = {
            fg = p.fg,
            bg = p.bg_alt,
        },

        TelescopeBorder = {
            fg = p.crimson,
            bg = p.bg_alt,
        },

        -- Prompt
        TelescopePromptNormal = {
            fg = p.fg,
            bg = p.surface,
        },

        TelescopePromptBorder = {
            fg = p.zero_red,
            bg = p.surface,
        },

        TelescopePromptTitle = {
            fg   = p.bg,
            bg   = p.zero_red,
            bold = true,
        },

        TelescopePromptPrefix = {
            fg = p.saber,
            bg = p.surface,
            bold = true,
        },

        -- Results
        TelescopeResultsNormal = {
            fg = p.fg_alt,
            bg = p.bg_alt,
        },

        TelescopeResultsBorder = {
            fg = p.crimson,
            bg = p.bg_alt,
        },

        TelescopeResultsTitle = {
            fg   = p.bg,
            bg   = p.armor_red,
            bold = true,
        },

        TelescopeSelection = {
            fg   = p.white,
            bg   = p.surface_light,
            bold = true,
        },

        TelescopeSelectionCaret = {
            fg   = p.saber,
            bg   = p.surface_light,
            bold = true,
        },

        TelescopeMultiSelection = {
            fg = p.gold,
        },

        TelescopeMatching = {
            fg   = p.saber_glow,
            bold = true,
        },

        -- Preview
        TelescopePreviewNormal = {
            fg = p.fg,
            bg = p.bg_alt,
        },

        TelescopePreviewBorder = {
            fg = p.crimson,
            bg = p.bg_alt,
        },

        TelescopePreviewTitle = {
            fg   = p.bg,
            bg   = p.gold,
            bold = true,
        },
    }

    for name, opts in pairs(groups) do
        vim.api.nvim_set_hl(0, name, opts)
    end
end

return M
