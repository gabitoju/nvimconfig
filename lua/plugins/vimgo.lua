return {
	"fatih/vim-go",
	config = function()
		vim.keymap.set("n", "<leader>gtf", "<CMD>GoTestFunc<CR>", { desc = "Go Test Function" })
	end,
}
