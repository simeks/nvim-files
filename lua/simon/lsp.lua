require("mason").setup()
require("mason-lspconfig").setup({
    automatic_installation = true,
})

local lspconfig = require('lspconfig')

lspconfig.pyright.setup {}
lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}

local cmp_nvim_lsp = require "cmp_nvim_lsp"

lspconfig.clangd.setup {
    on_attach = on_attach,
    capabilities = cmp_nvim_lsp.default_capabilities(),
    cmd = {
        "clangd",
        "--offset-encoding=utf-16",
    },
}
