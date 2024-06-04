return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls", "gopls", "pyright"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require'lspconfig'.lua_ls.setup{}
            require'lspconfig'.gopls.setup{}
            require'lspconfig'.pyright.setup{}
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
