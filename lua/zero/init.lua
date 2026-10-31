local M = {}

function M.load()
    if vim.g.colors_name then
        vim.cmd("highlight clear")
    end

    vim.o.termguicolors = true
    vim.o.background    = "dark"

    vim.g.colors_name = "zero"

    require("zero.highlights").apply()
end

return M

