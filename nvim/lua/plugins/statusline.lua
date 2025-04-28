return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = false,
				theme = "auto",
				component_separators = "",
				section_separators = "",
				disabled_filetypes = { "alpha", "neo-tree", "oil", "yazi" },
			},

			sections = {
				lualine_a = { "mode" },
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "branch" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
