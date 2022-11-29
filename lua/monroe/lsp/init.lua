local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
    return
end

require ("monroe.lsp.lsp-installer")
require ("monroe.lsp.handlers").setup()

-- Helm LSP Bootstrap/Configuration
local configs_status, configs = pcall(require, "lspconfig.configs")
if not configs_status then 
  return
end

local util_status, util = pcall(require, "lspconfig.util")
if not util_status then
	return
end

if not configs.helm_ls then
	configs.helm_ls = {
	default_config = {
	  cmd = {"helm_ls", "serve"},
	  filetypes = {'helm'},
	  root_dir = function(fname)
		return util.root_pattern('Chart.yaml')(fname)
	  end,
	},
  }
end

lspconfig.helm_ls.setup {
  filetypes = {"helm"},
  cmd = {"helm_ls", "serve"},
}
