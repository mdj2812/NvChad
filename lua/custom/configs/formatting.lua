local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    cpp = { "clang-format" },
    lua = { "stylua" },
    python = { "isort", "autopep8" },
    -- ["*"] = { "codespell" },
    ["_"] = { "trim_whitespace" },
  },
  formatters = {
    autopep8 = {
      args = { "--max-line-length", "120", "-aa", "$FILENAME" },
    }
  },
  format_after_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  },
})

vim.keymap.set({ "n", "v" }, "<leader>mp",
  function()
    conform.format({
      lsp_fallback = true,
      async = false,
      timeout_ms = 1000,
    })
  end
)
