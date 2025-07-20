return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		-- opts = function(_, opts)
		-- 	local trouble = require("trouble")
		-- 	local symbols = trouble.statusline({
		-- 		mode = "lsp_document_symbols",
		-- 		groups = {},
		-- 		title = false,
		-- 		filter = { range = true },
		-- 		format = "{kind_icon}{symbol.name:Normal}",
		-- 		-- The following line is needed to fix the background color
		-- 		-- Set it to the lualine section you want to use
		-- 		hl_group = "lualine_c_normal",
		-- 	})
		-- 	table.insert(opts.sections.lualine_c, {
		-- 		symbols.get,
		-- 		cond = symbols.has,
		-- 	})
		-- end,
		config = function()
			require("lualine").setup({
				options = {
					theme = "nightfox",
					icons_enabled = true,
					section_separators = { left = "", right = "" },
					component_separators = "",
					disabled_filetypes = { -- Filetypes to disable lualine for.
						"packer",
						"NvimTree",
					},
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = {
						"branch",
						"diff",
						{
							"diagnostics",
							sources = { "nvim_diagnostic" },
							symbols = { error = " ", warn = " ", info = " ", hint = " " },
						},
					},
					lualine_c = { "filename" },
					lualine_x = {
						{
							"copilot",
							-- Default values
							symbols = {
								status = {
									icons = {
										enabled = " ",
										sleep = " ", -- auto-trigger disabled
										disabled = " ",
										warning = " ",
										unknown = " ",
									},
									hl = {
										enabled = "#50FA7B",
										sleep = "#AEB7D0",
										disabled = "#6272A4",
										warning = "#FFB86C",
										unknown = "#FF5555",
									},
								},
								spinners = "dots",
								spinner_color = "#6272A4",
							},
							show_colors = false,
							show_loading = true,
						},
						"encoding",
						"fileformat",
						"filetype",
					},
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
			})
		end,
	},
}
