return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        --lua
        null_ls.builtins.formatting.stylua,
        -- clangd
        null_ls.builtins.formatting.clang_format,
        -- go
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.diagnostics.golangci_lint,
        -- bash
        null_ls.builtins.formatting.shellharden,
        -- js
        null_ls.builtins.formatting.prettier,
      }
    })

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end
}
