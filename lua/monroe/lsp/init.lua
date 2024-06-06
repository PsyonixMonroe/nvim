local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	return
end

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
			cmd = { "helm_ls", "serve" },
			filetypes = { 'helm' },
			root_dir = function(fname)
				return util.root_pattern('Chart.yaml')(fname)
			end,
		},
	}
end

local status_lspzero, lspzero = pcall(require, "lsp-zero")
if not status_lspzero then
	return
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspzero.extend_lspconfig()

lspconfig.helm_ls.setup {
	filetypes = { "helm" },
	cmd = { "helm_ls", "serve" },
	capabilities = capabilities
}

allservers = { 'gopls', 'bashls', 'jsonls', 'clangd', 'docker_compose_language_service', 'dockerls',
	'intelephense', 'psalm', 'pylsp', 'terraformls', 'lua_ls' }
for key, value in pairs(allservers) do
	-- print("key: " .. key .. " Value: " .. value)
	if value == 'gopls' then
		lspconfig[value].setup {
			capabilities = capabilities,
			settings = {
				templateExtensions = { "gohtml" }
			}
		}
	else
		lspconfig[value].setup {
			capabilities = capabilities
		}
	end
end

local function setup()
	local signs = {
		{ name = "DiagnosticSignError", text = "" },
		{ name = "DiagnosticSignWarn",  text = "" },
		{ name = "DiagnosticSignHint",  text = "" },
		{ name = "DiagnosticSignInfo",  text = "" },
	}

	for _, sign in ipairs(signs) do
		vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
	end

	local config = {
		-- disable virtual text
		virtual_text = false,
		-- show signs
		signs = {
			active = signs,
		},
		update_in_insert = true,
		underline = false,
		severity_sort = true,
		float = {
			focusable = false,
			style = "minimal",
			border = "rounded",
			source = "always",
			header = "",
			prefix = "",
		},
	}

	vim.diagnostic.config(config)

	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
		border = "rounded",
	})

	vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
		border = "rounded",
	})
end

local function lsp_highlight_document(client)
	-- Set autocommands conditional on server_capabilities
	if client.server_capabilities.document_highlight then
		vim.api.nvim_exec(
			[[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]],
			false
		)
	end
end

local function lsp_keymaps(bufnr)
	local opts = { noremap = true, silent = true }
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "go", "<C-o>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>t", ":tab sb #<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>y", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>gl", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>d", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	-- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	-- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
	vim.api.nvim_buf_set_keymap(
		bufnr,
		"n",
		"gl",
		'<cmd>lua vim.diagnostic.open_float({ border = "rounded" })<CR>',
		opts
	)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
	vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
	vim.api.nvim_create_augroup('AutoFormatting', {})
	vim.api.nvim_create_autocmd('BufWritePre', {
		pattern = "*",
		group = "AutoFormatting",
		callback = function()
			vim.lsp.buf.format({ async = true })
		end,
	})

	vim.api.nvim_buf_set_keymap(bufnr, "n", "zo", "zO", opts)
end

local function on_attach(client, bufnr)
	if client.name == "tsserver" then
		client.server_capabilities.documentFormattingProvider = false
	end
	lsp_keymaps(bufnr)
	lsp_highlight_document(client)
	-- require('folding').on_attach()
	vim.opt.foldlevel = 20
end

lspzero.preset({
	name = 'minimal',
	set_lsp_keymaps = true,
	manage_nvim_cmp = true,
	suggest_lsp_servers = false,
})

lspzero.on_attach(function(client, bufnr)
	lspzero.default_keymaps({ buffer = bufnr })
	on_attach(client, bufnr)
end)

lspzero.setup_servers(allservers)

-- lspzero.nvim_workspace()

lspzero.setup()

require("mason").setup({
	PATH = "prepend"
})

setup()
