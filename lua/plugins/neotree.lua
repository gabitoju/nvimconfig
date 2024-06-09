return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            open_files_do_not_replace_types = { "terminal", "trouble", "qf", "Outline", "edgy" },
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                },
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = true,
                },
                use_libuv_file_watcher = true,
            },
        })

        vim.keymap.set("n", "<C-e>", ":Neotree toggle=true filesystem reveal left<CR>", {})
        vim.keymap.set("n", "<leader>tb", ":Neotree buffers<CR>", {})
    end,
}
