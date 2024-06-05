return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		local telescope = require("telescope.builtin")
		require("dashboard").setup({
			theme = "doom",
			hide = {
				statusline = false,
			},
			config = {
				header = {
					"",
					"",
					"",
					"",
					"",
					" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗ ",
					" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║ ",
					" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║ ",
					" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ",
					" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║ ",
					" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ",
					"",
					"",
					"",
				},
				center = {
					{ action = "Telescope projects", desc = "Projects ", key = "p", icon = " " },
					{ action = "ene | startinsert", desc = " New File", key = "n", icon = " " },
					{ action = telescope.find_files, desc = " Find File", key = "f", icon = " " },
					{ action = "LazyGit", desc = "LazyGit ", key = "g", icon = " " },
					{ action = "Lazy", desc = " Lazy", key = "l", icon = "󰒲 " },
					{ action = "Mason", desc = " Mason", key = "m", icon = "◍ " },
					{
						action = function()
							vim.api.nvim_input("<cmd>qa<cr>")
						end,
						desc = " Quit",
						key = "q",
						icon = " ",
					},
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
