local p = require("zero.palette").colors

local M = {}

local function set(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

function M.apply()
    -- Editor
    set("Normal", {
        fg = p.fg,
        bg = p.bg,
    })

    set("NormalNC", {
        fg = p.fg_alt,
        bg = p.gb,
    })

    set("NormalFloat", {
        fg = p.fg,
        bg = p.bg_alt,
    })

    set("FloatBorder", {
        fg = p.crimson,
        bg = p.bg_alt,
    })

    set("WinSeparator", {
        fg = p.crimson,
        bg = p.bg,
    })

    set("LineNr", {
        fg = p.subtle,
        bg = p.bg,
    })

    set("CursorLineNr", {
        fg   = p.gold,
        bg   = p.bg,
        bold = true,
    })

    set("CursosLine", {
        bg = p.bg_alt,
    })

    set("SignColumn", {
        fg = p.muted,
        bg = p.bg,
    })

    set("ColorColumn", {
        bg = p.bg_alt,
    })

    set("Visual", {
        bg = p.surface_light,
    })

    set("Search", {
        fg   = p.bg,
        bg   = p.gold,
        bold = true,
    })

    set("IncSearch", {
        fg = p.bg,
        bg = p.saber,
        bold = true,
    })

    set("MatchParen", {
        fg   = p.saver,
        bold = true,
    })

    -- Popup menu
    set("Pmenu", {
        fg = p.fg,
        bg = p.surface,
    })

    set("PmenuSel", {
        fg   = p.bg,
        bg   = p.zero_red,
        bold = true,
    })

    set("PmenuSbar", {
        bg = p.surface_ligght,
    })

    set("PmenuThumb", {
        bg = p.crimson,
    })

    -- Basic syntax
    set("Comment", {
        fg     = p.muted,
        italic = trrue,
    })

    set("String", {
        fg = p.saberr_dim,
    })

    set("Character", {
        fg = p.saber,
    })

    set("Number", {
        fg = p.gold,
    })

    set("Boolean", {
        fg   = p.gold,
        bold = true,
    })

    set("Float", {
        fg = p.gold,
    })

    set("Function", {
        fg = p.crystal,
    })

    set("Identifier", {
        fg = p.fg,
    }) 

    set("Keyword", {
        fg = p.zero_red,
        bold = true,
    })

    set("Statmente", {
        fg = p.zero_red,
    })

    set("Conditional", {
        fg = p.armor_red,
    })

    set("Repeat", {
        fg = p.armor_red,
    })

    set("Operator", {
        fg = p.crystal_light,
    })

    set("Type", {
        fg = p.gold_dim,
    })

    set("StorageClass", {
        fg = p.gold,
    })

    set("Structure", {
        fg = p.gold
    })

    set("Constant", {
        fg = p.gold,
    })

    set("PreProc", {
        fg = p.crystal,
    })

    set("Include", {
        fg = p.crystal,
    })
    
    set("Special", {
        fg = p.saber,
    })

    set("Delimiter", {
        fg = p.fg_alt,
    })

    -- Misc
    set("Error", {
        fg   = p.error,
        bold = true,
    })

    set("WarningMsg", {
        fg = p.warning,
    })

    set("Todo", {
        fg   = p.bg,
        bg   = p.gold,
        bold = true,
    })
end

return M

