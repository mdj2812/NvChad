local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    cpp = { "clang-format" },
    lua = { "stylua" },
    python = { "isort", "autopep8" },
    -- ["*"] = { "codespell" },
    ["_"] = { "trim_whitespace" },
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  },
})

vim.keymap.set({ "n", "v" }, "<leader>mp",
  function()
    conform.format({
      lsp_fallback = true,
      async = false,
      timeout_ms = 500,
    })
  end
)
