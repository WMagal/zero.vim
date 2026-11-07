local p = require("zero.palette").colors

local M = {}

local function set(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

function M.apply()
    -- Variables
    set("@variable", {
        fg = p.fg,
    })

    set("@variable.builtin", {
        fg     = p.armor_red,
        italic = true,
    })

    set("@variable.parameter", {
        fg     = p.fg_alt,
        italic = true,
    })

    set("@variable.member", {
        fg = p.crystal_light,
    })

    -- Constants
    set("@constant", {
        fg = p.gold,
    })

    set("@constant.builtin", {
        fg   = p.gold,
        bold = true,
    })

    set("@constant.macro", {
        fg = p.crystal,
    })

    -- String
    set("@string", {
        fg = p.saber_dim,
    })

    set("@string.escape", {
        fg   = p.saber_glow,
        bold = true,
    })

    set("@character", {
        fg   = p.saber_glow,
    })

    -- Number
    set("@number", {
        fg = p.gold,
    })

    set("@number.float", {
        fg   = p.gold,
    })

    set("@boolean", {
        fg   = p.gold,
        bold = true,
    })

    -- function
    set("@function", {
        fg = p.crystal,
    })

    set("@function.call", {
        fg = p.crystal_light,
    })

    set("@function.builtin", {
        fg      = p.crystal,
        italic  = true,
    })

    set("@function.method", {
        fg = p.crystal,
    })

    set("@function.method.call", {
        fg = p.crystal_light,
    })

    set("@function.macro", {
        fg = p.gold,
    })

    -- Types
    set("@type", {
        fg = p.gold_dim,
    })

    set("@type.builtin", {
        fg   = p.gold,
        bold = true,
    })

    set("@type.definition", {
        fg   = p.armor_red,
    })

    set("@constructor", {
        fg = p.crystal,
    })

    -- Keywords
    set("@keyword", {
        fg   = p.zero_red,
        bold = true,
    })

    set("@keyword.function", {
        fg   = p.armor_red,
        bold = true,
    })

    set("@keyword.return", {
        fg   = p.zero,
        bold = true,
    })

    set("@keyword.conditional", {
        fg = p.armor_red,
    })

    set("@keyword.repeat", {
        fg = p.armor_red,
    })

    set("@keyword.import", {
        fg = p.crystal,
    })

    set("@keyword.modifier", {
        fg = p.zero_red,
    })

    set("@keyword.type", {
        fg = p.gold,
    })

    set("@keyword.operator", {
        fg = p.crystal_light,
    })

    -- Operators
    set("@operator", {
        fg = p.crystal_light,
    })

    -- Property
    set("@property", {
        fg = p.crystal_light,
    })

    -- Modules / namespaces
    set("@module", {
        fg = p.crystal,
    })

    set("@module.builtin", {
        fg = p.crystal_light,
    })

    -- Comments
    set("@comment", {
        fg      = p.muted,
        italic  = true,
    })

    set("@comment.documentation", {
        fg      = p.subtle,
        italic  = true,
    })

    -- Punctuation
    set("@punctuation.delimiter", {
        fg = p.fg_alt,
    })

    set("@punctuation.bracket", {
        fg = p.fg_alt,
    })

    set("@punctuation.special", {
        fg = p.saber,
    })
end

return M

