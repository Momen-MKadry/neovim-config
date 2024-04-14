-- Description: This file is used to load the theme for the editor
-- I currently use Rose Pine Moon, but I have a few other themes that I like to switch between

return {
	{
		-- Lazy load tokyonight
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
	},
	-- Lazt load catppuccin
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},

	{
		"npxbr/gruvbox.nvim",
	},

	{
		"Mofiqul/dracula.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			--vim.cmd.colorscheme("dracula")
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
    config = function()
      vim.g.rose_pine_variant = 'dawn'
      vim.cmd[[colorscheme rose-pine]]
    end
	},
	{
		"sainnhe/everforest",
	},
	{
		"Mofiqul/vscode.nvim",
	},
	{
		"navarasu/onedark.nvim",
	},
	{
		"yuttie/hydrangea-vim",
	},
}
