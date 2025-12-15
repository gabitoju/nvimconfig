return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "gopls", "pyright", "html", "cssls" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- capacidades para autocompletion, etc.
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- configuración por servidor
            local servers = {
                lua_ls = {
                    -- acá podés meter settings específicos de Lua si querés
                    -- settings = {
                    --     Lua = {
                    --         diagnostics = { globals = { "vim" } },
                    --     },
                    -- },
                },
                gopls = {},
                pyright = {},
                html = {},
                cssls = {},
            }

            -- registrar configs usando la API nueva
            for name, cfg in pairs(servers) do
                cfg.capabilities = capabilities
                vim.lsp.config(name, cfg)
            end

            -- habilitar todos los servers definidos arriba
            vim.lsp.enable(vim.tbl_keys(servers))

            -- keymaps LSP
            local opts = { noremap = true, silent = true }
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            -- vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
        end,
    },
}
