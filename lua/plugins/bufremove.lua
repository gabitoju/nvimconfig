return {
    "echasnovski/mini.bufremove",
    version = false,
    config = function()
        local bufremove = require("mini.bufremove")
        bufremove.setup()
        vim.keymap.set("n", "<leader>bd", bufremove.delete, { noremap = true, silent = true, desc = "Remove buffer" })
    end,
}
