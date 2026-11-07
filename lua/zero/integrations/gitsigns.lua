local p = require("zero.palette").colors
local M = {}

function M.apply()
    local groups = {
        -- Added lines: Z-Saber
        GitSignsAdd = {
            fg = p.saber
        },

        -- Modified lines: Gold
        GitSignsChange = {
            fg = p.gold
        },

        -- Deleted lines: Zero Red
        GitSignsDelete = {
            fg = p.error
        },

        -- Other change types
        GitSignsChangedelete = {
            fg = p.armor_red
        },
        GitSignsTopdelete    = {
            fg = p.error
        },
        GitSignsUntracked    = {
            fg = p.saber_dim
        },

        -- Git preview
        GitSignsAddPreview    = {
            fg = p.surface
        },
        GitSignsDeletePreview = {
            fg = p.surface_light
        },

        -- Inline changes
        GitSignsAddInline = {
            fg = p.bg,
            bg = p.saber_dim,
        },

        GitSignsChangeInline = {
            fg = p.bg,
            bg = p.gold,
        },

        GitSignsDeleteInline = {
            fg = p.white,
            bg = p.crimson,
        },

        -- Git blame
        GitSignsCurrentLineBlame = {
            fg     = p.muted,
            italic = true,
        },
    }

    for group, opts in pairs(groups) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
