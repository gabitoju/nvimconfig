return {

	"folke/edgy.nvim",
	event = "VeryLazy",
	init = function()
		vim.opt.laststatus = 3
		vim.opt.splitkeep = "screen"
	end,
	opts = {
		right = {
			{
				ft = "Outline",
				title = "Outline",
				pinned = true,
				open = "Outline",
			},
		},
		left = {
			{
				title = "Neo-Tree",
				ft = "neo-tree",
				filter = function(buf)
					return vim.b[buf].neo_tree_source == "filesystem"
				end,
				pinned = true,
				open = function()
					require("neo-tree.command").execute({ dir = LazyVim.root() })
				end,
				size = { height = 0.5 },
			},
			{
				title = "Neo-Tree Buffers",
				ft = "neo-tree",
				filter = function(buf)
					return vim.b[buf].neo_tree_source == "buffers"
				end,
				pinned = true,
				open = "Neotree position=top buffers",
			},
			"neo-tree",
		},
		bottom = {
			{
				ft = "toggleterm",
				size = { height = 0.4 },
				-- exclude floating windows
				filter = function(buf, win)
					return vim.api.nvim_win_get_config(win).relative == ""
				end,
			},
		},
	},
}
