vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " "



vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprev<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

--vim.wo.number = true
--vim.opt.relativenumber = true

vim.opt.nu = true
vim.opt.relativenumber = true
vim.o.statuscolumn = "%s %l %r "

vim.opt.cursorline = true

vim.opt.termguicolors = true

vim.opt.swapfile = false

vim.opt.clipboard = "unnamedplus"
