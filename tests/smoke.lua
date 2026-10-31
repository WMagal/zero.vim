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
