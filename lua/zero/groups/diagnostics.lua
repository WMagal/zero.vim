local p = require("zero.palette").colors

local M = {}

function M.apply()
    local severity = {
        Error = p.error,
        Warn  = p.warning,
        Info  = p.info,
        Hint  = p.hint,
        Ok    = p.saber,
    }

    for name, color in pairs(severity) do
        -- Main diagnostic color
        vim.api.nvim_set_hl(0, "Diagnostic" .. name, {
            fg = color,
        })

        -- Gutter icons
        vim.api.nvim_set_hl(0, "DiagnosticSign" .. name, {
            fg = color,
            bg = p.bg,
        })

        -- Messages displayed beside code
        vim.api.nvim_set_hl(0, "DiagnosticVirtualText" .. name, {
            fg = color,
            bg = p.bg_alt,
        })

        -- Floating windows
        vim.api.nvim_set_hl(0, "DiagnosticFloating" .. name, {
            fg        = color,
        })

        -- Underline (without changing code foreground)
        vim.api.nvim_set_hl(0, "DiagnosticUnderline" .. name, {
            sp        = color,
            undercurl = true,
        })
        
        -- Virtual lines
        vim.api.nvim_set_hl(0, "DiagnosticVirtualLines" .. name,{
            fg = color,
        })
    end

    vim.api.nvim_set_hl(0, "DiagnosticDeprecated", {
        strikethrough = true,
    })

    vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", {
        fg = p.muted,
    })

end

    return M

