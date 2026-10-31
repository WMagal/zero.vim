local M = {}

function M.load()
    vim.cmd("highlight clear")

    vim.o.background = "dark"

    vim.g.colors_name = "zero"

    require("zero.highlights").apply()
end

return M

