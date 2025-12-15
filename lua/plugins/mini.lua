return {
	"echasnovski/mini.bufremove",
	version = false,
	config = function()
		require("mini.bufremove").setup()

        vim.keymap.set("n", "<leader>bd", function()
            require("mini.bufremove").delete(0, false)
        end, { desc = "Delete buffer" })

        vim.keymap.set("n", "<leader>bx", function()
            require("mini.bufremove").delete(0, true)
        end, { desc = "Delete buffer (force)" })

	end,
}
