vim.cmd.colorscheme("zero")

assert(vim.g.colors_name == "zero", "zero.nvim was not loaded")

local palette = require("zero.palette").colors

assert(palette.bg ~= nil, "palette.bg is missing")
assert(palette.fg ~= nil, "palette.fg is missing")
assert(palette.zero_red ~= nil, "palette.zero_red is missing")
assert(palette.saber ~=nil, "palette.saber is missing")

local normal = vim.api.nvim_get_hl(0, {
    name = "Normal",
    link = false,
})

assert(normal.fg ~= nil, "Normal foreground was not defined")
assert(normal.bg ~= nil, "Normal background was not defined")

print("zero.nvim smoke test: OK")

local function assert_highlight(group)
    local hl = vim.api.nvim_get_hl(0, {
        name = group,
        link = false,
    })

    assert(
        type(hl) == "table",
        group .. " did not return a highlight table"
    )

    assert(
        next(hl) ~= nil, 
        group .. " highlight is missing"
    )
end

    assert_highlight("DiagnosticError")
assert_highlight("DiagnosticWarn")
assert_highlight("DiagnosticUnderlineError")

assert_highlight("@lsp.type.function")
assert_highlight("@lsp.type.parameter")

assert_highlight("LspSignatureActiveParameter")

local function assert_fg(group, hex)
    local hl = vim.api.nvim_get_hl(0, {
        name = group,
        link = false,
    })


    local expected = tonumber(hex:sub(2), 16)

    assert(
        hl.fg == expected,
        group .. " has an unexpected foreground color"
    )
end

assert_fg("GitSignsAdd", palette.saber)
assert_fg("GitSignsChange", palette.gold)
assert_fg("GitSignsDelete", palette.error)
assert_fg("GitSignsUntracked", palette.saber_dim)

-- Telescope
assert_highlight("TelescopeNormal")
assert_highlight("TelescopePromptNormal")
assert_highlight("TelescopeResultsNormal")
assert_highlight("TelescopePreviewNormal")

assert_fg("TelescopePromptBorder", palette.zero_red)
assert_fg("TelescopePromptPrefix", palette.saber)
assert_fg("TelescopeSelectionCaret", palette.saber)
assert_fg("TelescopeMatching", palette.saber_glow)
assert_fg("TelescopePreviewTitle", palette.bg)

print("zero.nvim smoke test: OK\n")

