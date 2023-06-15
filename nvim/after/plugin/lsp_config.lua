require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "pyright" }
})
require("lspconfig").pyright.setup {
    capabilities = capabilities,
}


require("lspconfig").html.setup {
    capabilities = capabilities,
}


vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
vim.lsp.diagnostic.on_publish_diagnostics, {
    -- delay update diagnostics
    update_in_insert = true,
})
