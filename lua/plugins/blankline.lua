return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = function()
		require("ibl").setup({
			exclude = {
				filetypes = {
					"help",
					"dashboard",
					"neo-tree",
					"lazy",
					"mason",
					"toggleterm",
				},
			},
			scope = {
				enabled = false,
			},
		})
        vim.keymap.set('n', '<leader>i', '<CMD>IBLToggle<CR>', {desc = "Toggle IBL"})
	end,
}
