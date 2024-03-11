local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  cmd = {
    "clangd",
    "-j=8",
    "--offset-encoding=utf-16",
    "--clang-tidy",
    "--malloc-trim",
    "--background-index"
  },
  capabilities = capabilities,
}
