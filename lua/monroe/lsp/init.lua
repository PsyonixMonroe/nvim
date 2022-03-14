local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require ("monroe.lsp.lsp-installer")
require ("monroe.lsp.handlers").setup()
require ("monroe.lsp.null-ls")
