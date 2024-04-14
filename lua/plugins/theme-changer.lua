-- Currently not working, but I'm keeping it here for future reference
return {
	"vague2k/huez.nvim",
	dependencies = {
		-- You probably already have this installed, highly reccomended you do.
		"nvim-telescope/telescope.nvim",
		-- If using vim.ui, this plugin will give you a better experience
		"stevearc/dressing.nvim",
		config = function()
			local colorscheme = require("huez.api").get_colorscheme()
			vim.cmd("colorscheme " .. colorscheme)

			vim.keymap.set('n', '<C-w>', ":Huez<CR>", {})

			file_path = vim.fs.normalize(vim.fn.stdpath("config")) .. "/.nvim.huez.lua"
			fallback = "default"
			omit =
				{
					"default",
					"desert",
					"evening",
					"industry",
					"koehler",
					"morning",
					"murphy",
					"pablo",
					"peachpuff",
					"ron",
					"shine",
					"slate",
					"torte",
					"zellner",
					"blue",
					"darkblue",
					"delek",
					"quiet",
					"elflord",
					"habamax",
					"lunaperche",
				}, picker == "telescope"
			picker_opts = nil
		end,
	},
}
