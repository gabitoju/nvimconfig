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
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                },
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = true,
                },
            },
        })

        vim.keymap.set("n", "<C-e>", ":Neotree toggle=true filesystem reveal left<CR>", {})
    end,
}
