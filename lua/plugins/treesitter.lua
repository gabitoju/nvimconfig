return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "c", "java", "lua", "go", "python", "vim", "vimdoc" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
