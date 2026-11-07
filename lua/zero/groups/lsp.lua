local p = require("zero.palette").colors

local M = {}

function M.apply()
    local groups = {
        -- Variables and parameters
        ["@lsp.type.variable"]  = {fg = p.fg},
        ["@lsp.type.parameter"] = {fg = p.fg_alt},
        ["@lsp.type.property"]  = {fg = p.crystal_light},

        -- Function and methods
        ["@lsp.type.function"] = {fg = p.crystal},
        ["@lsp.type.methods"]  = {fg = p.crystal_light},

        -- Classes and types
        ["@lsp.type.class"]         = {fg = p.gold},
        ["@lsp.type.struct"]        = {fg = p.gold_dim},
        ["@lsp.type.interface"]     = {fg = p.gold},
        ["@lsp.type.enum"]          = {fg = p.gold},
        ["@lsp.type.enumMember"]    = {fg = p.gold},
        ["@lsp.type.type"]          = {fg = p.gold_dim},
        ["@lsp.type.typeParameter"] = {fg = p.armor_red},

        -- Namespaces and macros
        ["@lsp.type.namespace"] = {fg = p.crystal},
        ["@lsp.type.macro"]     = {fg = p.armor_red},

        -- Modifiers
        ["@lsp.mod.deprecated"]     = {strikethrough = true},
        ["@lsp.mod.readonly"]       = {italic        = true},
        ["@lsp.mod.defaaltLibrary"] = {italic    = true},

        -- Special token combinations
        ["@lsp.typemod.variable.readonly"] = {fg = p.gold},
        ["@lsp.typemod.property.readonly"] = {fg = p.gold_dim},

        -- LSP interface
        LspReferenceText  = {bg = p.surface},
        LspReferenceRead  = {bg = p.surface},
        LspReferenceWrite = {bg = p.surface_light},
        LspSignatureActiveParameter = {
            fg   = p.saber,
            bold = true,
        },
    }

    for name, opts in pairs(groups) do
        vim.api.nvim_set_hl(0, name, opts)
    end
end

return M
