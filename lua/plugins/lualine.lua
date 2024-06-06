-- Show virtual env in lualine based on this code: https://github.com/jdhao/nvim-config/commit/3137850db67b1b45111656e8749b60eb936dfa7d
local function virtual_env()
	if vim.bo.filetype ~= "python" then
		return ""
	end

	local conda_env = os.getenv("CONDA_DEFAULT_ENV")
	local venv_path = os.getenv("VIRTUAL_ENV")

	if venv_path == nil then
		if conda_env == nil then
			return ""
		else
			return string.format("  %s (conda)", conda_env)
		end
	else
		local venv_name = vim.fn.fnamemodify(venv_path, ":t")
		local python_version = vim.fn.system({ "python", "--version" }):gsub("%s+", ""):gsub("Python", "")
		return string.format(" %s (%s)", python_version, venv_name)
	end
end
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "dracula",
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = { "encoding", "fileformat", "filetype", virtual_env },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
