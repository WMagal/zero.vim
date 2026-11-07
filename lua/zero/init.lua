local M = {}

function M.load()
    if vim.g.colors_name then
        vim.cmd("highlight clear")
    end

    vim.o.termguicolors = true
    vim.o.background    = "dark"

    vim.g.colors_name = "zero"

    require("zero.highlights").apply()
    require("zero.groups.treesitter").apply()
    require("zero.groups.diagnostics").apply()
    require("zero.groups.lsp").apply()

    -- Plugin integrations
    require("zero.integrations.gitsigns").apply()
end

return M

