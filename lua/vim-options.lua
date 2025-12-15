vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprev<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

-- vim.wo.number = true
--vim.opt.relativenumber = true

vim.opt.nu = true
--vim.opt.relativenumber = true
-- vim.opt.statuscolumn = "%s %l %r "

vim.opt.cursorline = true

vim.opt.termguicolors = true

vim.opt.swapfile = false

vim.opt.clipboard = "unnamedplus"

pcall(vim.keymap.del, "n", "[c")
pcall(vim.keymap.del, "n", "]c")

vim.keymap.set("n", "]c", function()
    return vim.wo.diff and "]c" or "<Ignore>"
end, { expr = true, desc = "Next diff chunk" })
vim.keymap.set("n", "[c", function()
    return vim.wo.diff and "[c" or "<Ignore>"
end, { expr = true, desc = "Prev diff chunk" })
