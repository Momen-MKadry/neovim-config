return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
  {
    "smartpde/telescope-recent-files",
    config = function()
      local builtin = require("telescope.builtin")
      require("telescope").load_extension("recent_files")
      vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {}) -- recent files
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    config = function()
      require("telescope").load_extension("file_browser")
      vim.keymap.set("n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
    end,
  },
  {
    "nvim-telescope/telescope-project.nvim",
    config = function()
      require("telescope").load_extension("project")
      vim.keymap.set("n", "<leader>fp", ":Telescope project<CR>", {})
    end,
  }
}
